// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class PetCard extends StatelessWidget {
  const PetCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: const BorderRadius.all(
        Radius.circular(15),
      ),
      elevation: 90,
      child: Container(
        width: 70,
        height: 150,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Color.fromARGB(0, 240, 213, 213),
        ),
        child: Row(
          children: [
            Container(
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                ),
                image: DecorationImage(
                  image: AssetImage(
                    'img/perfil.jpg',
                  ),
                ),
              ),
            ),
            Column(
              children: const [
                Text("Raça dog/cat"),
                Text("Nome dog/cat"),
                Text("Idade dog/cat"),
              ],
            ),
            Container(
              child: Icon(Icons.arrow_right, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
