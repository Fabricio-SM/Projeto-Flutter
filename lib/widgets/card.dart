// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:trabalho_pdm/models/pet.dart';

class PetCard extends StatelessWidget {
  final List<Pet> pets;
  final int index;

  const PetCard(String nome,
      {super.key, required this.pets, required this.index});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.sizeOf(context);
    return Material(
      borderRadius: const BorderRadius.all(
        Radius.circular(20),
      ),
      elevation: 60,
      child: Container(
        height: mediaQuery.height / 5,
        width: mediaQuery.width / 2,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Color.fromARGB(0, 240, 213, 213),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              margin: EdgeInsets.only(right: 10),
              width: mediaQuery.width / 4,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Color.fromARGB(0, 0, 0, 0),
                ),
                image: DecorationImage(
                  image: AssetImage('img/a.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        pets[index].raca,
                        //"Raça Pet",
                        style: TextStyle(
                            fontSize: mediaQuery.width / 22,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        pets[index].nome,
                        //"Nome Pet",
                        style: TextStyle(
                            fontSize: mediaQuery.width / 15,
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        pets[index].dataNasc,
                        //"Idade Pet",
                        style: TextStyle(
                            fontSize: mediaQuery.width / 22,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
                child: Icon(
              Icons.arrow_right,
              color: Colors.black,
              size: mediaQuery.width / 5,
            )),
          ],
        ),
      ),
    );
  }
}
