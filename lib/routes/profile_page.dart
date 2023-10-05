import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trabalho_pdm/widgets/perfil_cache.dart';

class MyProfile extends StatefulWidget {
  @override
  _MyProfile createState() => _MyProfile();
}

class _MyProfile extends State<MyProfile> {
  // ... Seu código existente ...

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.sizeOf(context);
    return Consumer<Cache>(
      builder: (context, cache, _) {
        return Scaffold(
          backgroundColor: const Color(0xFFF1F3F6),
          body: SingleChildScrollView(
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Account",
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
<<<<<<< HEAD
                    const SizedBox(height: 20),
=======
                    SizedBox(height: 20),
>>>>>>> 52b71ca45524f5410003349502d991343e96bc29
                    const Text(
                      "Profile",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
<<<<<<< HEAD
                    const SizedBox(height: 20),
=======
                    SizedBox(height: 20),
>>>>>>> 52b71ca45524f5410003349502d991343e96bc29
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.black,
                              width: 2,
                            ),
                            image: const DecorationImage(
                              image: AssetImage(
                                'img/perfil.jpg',
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(
                            width: 40), // Espaço entre a imagem e o texto
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
<<<<<<< HEAD
                            const Text(
                              "Bordeaux, France",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.grey),
=======
                            Text(
                              cache.listPerfil[0].email,
                              style: const TextStyle(
                                fontSize: 16,
                              ),
>>>>>>> 52b71ca45524f5410003349502d991343e96bc29
                            ),
                            const SizedBox(height: 10),
                            Text(
                              cache.listPerfil[0].nome,
                              style: const TextStyle(
<<<<<<< HEAD
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              "19 Friends",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.grey),
=======
                                fontSize: 16,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              cache.listPerfil[0].password,
                              style: const TextStyle(
                                fontSize: 16,
                              ),
>>>>>>> 52b71ca45524f5410003349502d991343e96bc29
                            ),
                          ],
                        ),
                      ],
<<<<<<< HEAD
                    ),
                    const SizedBox(height: 20),
                    const SizedBox(height: 20),

                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "My Posts",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "My walking history",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 20),

                    // Aqui está o grid de cards
                    GridView.builder(
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 10.0,
                        mainAxisSpacing: 10.0,
                      ),
                      itemCount: 10, // Número de cards
                      itemBuilder: (context, index) {
                        return const Card(
                          elevation: 2.0,
                          child: Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Adicione os detalhes do card aqui
                              ],
                            ),
                          ),
                        );
                      },
=======
>>>>>>> 52b71ca45524f5410003349502d991343e96bc29
                    ),
                    const SizedBox(height: 20),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
