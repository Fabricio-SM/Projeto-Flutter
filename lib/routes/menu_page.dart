// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, avoid_print, library_private_types_in_public_api, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trabalho_pdm/widgets/pet_cache.dart';
import '../widgets/Stats.dart';
import '../widgets/card.dart';

class Home extends StatefulWidget {
  const Home({Key? key});

  @override
  State<Home> createState() => _PetsMenuState();
}

class _PetsMenuState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Consumer<PetCache>(builder: (context, cache, _) {
      return Scaffold(
        backgroundColor: Color.fromARGB(255, 233, 242, 248),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 60, bottom: 20),
                  child: Text(
                    "Home",
                    style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'helvetica',
                    ),
                  ),
                ),
                Text(
                  "Dashboard",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 50, top: 30),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(236, 247, 239, 239),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    children: [
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: cache.listPet.length,
                        itemBuilder: (context, index) {
                          final dogs = cache.listPet;
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 30),
                            child: PetCard(
                              dogs[index].nome,
                              pets: dogs,
                              index: index,
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                Text(
                  "Stats",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 20, top: 10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(236, 247, 239, 239),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        child: Column(
                          children: [
                            Container(
                                margin: const EdgeInsets.only(bottom: 30),
                                child: StatsCard()),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
