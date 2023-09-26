// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, avoid_print, library_private_types_in_public_api, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../widgets/Card/Stats.dart';
import '../widgets/Card/card.dart';

class Home extends StatefulWidget {
  const Home({Key? key});

  @override
  State<Home> createState() => _PetsMenuState();
}

class _PetsMenuState extends State<Home> {
  @override
  Widget build(BuildContext context) {
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
                margin: const EdgeInsets.only(bottom: 80, top: 30),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color.fromARGB(236, 247, 239, 239),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 30),
                      child: PetCard(),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 30),
                      child: PetCard(),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 30),
                      child: PetCard(),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 30),
                      child: PetCard(),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 30),
                      child: PetCard(),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 30),
                      child: PetCard(),
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
                            Container(
                                margin: const EdgeInsets.only(bottom: 30),
                                child: StatsCard()),
                            Container(
                                margin: const EdgeInsets.only(bottom: 30),
                                child: StatsCard()),
                            Container(
                                margin: const EdgeInsets.only(bottom: 30),
                                child: StatsCard()),
                          ],
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      // floatingActionButton: Container(
      //   width: 70.0,
      //   height: 70.0,
      //   margin: const EdgeInsets.only(bottom: 20),
      //   child: FloatingActionButton(
      //     onPressed: () => Navigator.push(
      //       context,
      //       MaterialPageRoute(builder: (context) => const PetPage()),
      //     ),
      //     tooltip: 'Add Pet',
      //     child: Icon(
      //       Icons.add,
      //       size: 40.0,
      //     ),
      //   ),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
