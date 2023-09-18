// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:trabalho_pdm/routes/pets_menu_page.dart';
import 'package:trabalho_pdm/routes/profile_page.dart';

class TabsPage extends StatelessWidget {
  const TabsPage({Key? key}); // Remova o "super" aqui

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Este é o número de guias (tabs).
      child: Scaffold(
        body: TabBarView(
          children: [
            Container(
              color: Colors.blue,
            ),
            PetsMenu(),
            MyProfile(),
          ],
        ),
        bottomNavigationBar: Container(
          height: 55,
          decoration: const BoxDecoration(
            color: Color.fromARGB(151, 121, 184, 126),
          ),
          child: const TabBar(
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.white,
            tabs: [
              SizedBox(
                height: 60,
                width: 30,
                child: Tab(
                  icon: Icon(
                    Icons.home,
                    size: 30,
                  ),
                ),
              ),
              SizedBox(
                height: 60,
                width: 30,
                child: Tab(
                  icon: Icon(
                    Icons.pets,
                    size: 30,
                  ),
                ),
              ),
              SizedBox(
                height: 60,
                width: 30,
                child: Tab(
                  icon: Icon(
                    Icons.account_box,
                    size: 30,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
