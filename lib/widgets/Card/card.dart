// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:trabalho_pdm/styles.dart';

class PetCard extends StatelessWidget {
  const PetCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: const BorderRadius.all(
        Radius.circular(20),
      ),
      elevation: 60,
      child: Container(
        height: 250,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Color.fromARGB(0, 240, 213, 213),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: 280,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Color.fromARGB(0, 0, 0, 0),
                  width: 100,
                ),
                image: DecorationImage(
                  image: AssetImage('../img/a.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 200),
              child: Row(
                children: const [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Raça dog/cat",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Nome dog/cat",
                        style: TextStyle(
                            fontSize: 40,
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Idade dog/cat",
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
  }
}
