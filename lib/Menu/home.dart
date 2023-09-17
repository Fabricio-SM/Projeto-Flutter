// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, avoid_print, library_private_types_in_public_api, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:trabalho_pdm/Card/Stats.dart';
import 'package:trabalho_pdm/Card/card.dart';
import 'package:trabalho_pdm/Pet/pet.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _PetsMenuState();
}

class _PetsMenuState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 233, 242, 248),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 150.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    margin: EdgeInsets.only(top: 60),
                    child: Row(
                      children: [
                        Text(
                          "Home",
                          style: TextStyle(
                              fontSize: 90,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'helvetica'),
                        ),
                      ],
                    )),
                SizedBox(height: 90),
                Text(
                  "Dashboard",
                  style: TextStyle(fontSize: 70, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 150),
                  width: 1080,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(236, 247, 239, 239),
                      borderRadius: BorderRadius.circular(30)),
                  child: Column(children: [
                    ListView(
                      shrinkWrap: true,
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 50.0),
                          child: PetCard(),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 50.0),
                          child: PetCard(),
                        ),
                      ],
                    )
                  ]),
                ),
                SizedBox(height: 100),
                Text(
                  "Stats",
                  style: TextStyle(fontSize: 70, fontWeight: FontWeight.bold),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 160),
                  width: 1080,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(236, 247, 239, 239),
                      borderRadius: BorderRadius.circular(30)),
                  child: Column(children: [
                    ListView(
                      shrinkWrap: true,
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 50.0),
                          child: StatsCard(),
                        ),
                      ],
                    )
                  ]),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: Container(
        width: 100.0,
        height: 100.0,
        margin: EdgeInsets.only(bottom: 59),
        child: FloatingActionButton(
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const PetPage()),
          ),
          tooltip: 'Add Pet',
          child: Icon(
            Icons.add,
            size: 70.0,
            color: Colors.white,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
