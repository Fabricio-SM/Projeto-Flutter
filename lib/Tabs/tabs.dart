import 'package:flutter/material.dart';
import 'package:trabalho_pdm/Menu/pets_menu.dart';
import 'package:trabalho_pdm/Profile/profile.dart';

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
          height: 150,
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
                    size: 60,
                  ),
                ),
              ),
              SizedBox(
                height: 60,
                width: 30,
                child: Tab(
                  icon: Icon(
                    Icons.pets,
                    size: 60,
                  ),
                ),
              ),
              SizedBox(
                height: 60,
                width: 30,
                child: Tab(
                  icon: Icon(
                    Icons.account_box,
                    size: 60,
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
