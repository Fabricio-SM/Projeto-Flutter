// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, avoid_print, library_private_types_in_public_api, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trabalho_pdm/routes/pet_page.dart';
import 'package:trabalho_pdm/widgets/pet_cache.dart';

import '../widgets/card.dart';

class PetsMenu extends StatefulWidget {
  const PetsMenu({super.key});

  @override
  State<PetsMenu> createState() => _PetsMenuState();
}

class _PetsMenuState extends State<PetsMenu> {
  @override
  Widget build(BuildContext context) {
    return Consumer<PetCache>(
      builder: (context, cache, _) {
        return Scaffold(
          backgroundColor: Color.fromARGB(255, 233, 242, 248),
          body: SingleChildScrollView(
            child: SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Row(
                          children: [
                            Text(
                              "My pets",
                              style: TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'helvetica'),
                            ),
                          ],
                        )),
                    SizedBox(height: 20),
                    Text(
                      "Dogs",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.start,
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 50, top: 10),
                      width: 1080,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(236, 247, 239, 239),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: cache.caoPets.length,
                        itemBuilder: (context, index) {
                          final dogs = cache.caoPets;
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
                    ),
                    SizedBox(height: 50),
                    Text(
                      "Cats",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 160, top: 10),
                      width: 1080,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(236, 247, 239, 239),
                          borderRadius: BorderRadius.circular(30)),
                      child: Column(children: [
                        ListView.builder(
                          shrinkWrap: true,
                          itemCount: cache.gatoPets.length,
                          itemBuilder: (context, index) {
                            final cats = cache.gatoPets;
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 30),
                              child: PetCard(
                                cats[index].nome,
                                pets: cats,
                                index: index,
                              ),
                            );
                          },
                        ),
                      ]),
                    ),
                  ],
                ),
              ),
            ),
          ),
          floatingActionButton: Container(
            width: 70.0,
            height: 70.0,
            margin: EdgeInsets.only(bottom: 59),
            child: FloatingActionButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PetPage()),
              ),
              tooltip: 'Add Pet',
              child: Icon(
                Icons.add,
                size: 50.0,
                color: Colors.white,
              ),
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
        );
      },
    );
  }
}
