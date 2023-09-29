// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trabalho_pdm/widgets/pet_cache.dart';

class PetCard extends StatelessWidget {
  const PetCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<PetCache>(
      builder: (context, cache, _) {
        return Material(
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
          elevation: 60,
          child: Container(
            height: 100,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color.fromARGB(0, 240, 213, 213),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Color.fromARGB(0, 0, 0, 0),
                      width: 30,
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
                            //cache.listPet[0].raca,
                            "Raça Pet",
                            style: TextStyle(
                                fontSize: 10,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            //cache.listPet[0].nome,
                            "Nome Pet",
                            style: TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            //cache.listPet[0].dataNasc,
                            "Idade Pet",
                            style: TextStyle(
                                fontSize: 25,
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
                  size: 100,
                )),
              ],
            ),
          ),
        );
      },
    );
  }
}
