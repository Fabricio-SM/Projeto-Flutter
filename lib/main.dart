// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, avoid_print, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:trabalho_pdm/routes.dart';
import 'package:trabalho_pdm/routes/login_page.dart';
import 'package:provider/provider.dart';
import 'package:trabalho_pdm/widgets/perfil_cache.dart';
import 'package:trabalho_pdm/widgets/pet_cache.dart';


void main() {
  runApp(PetApp());
}

class PetApp extends StatelessWidget {
  const PetApp();

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<Cache>.value(
          value: Cache(),
        ),
        ChangeNotifierProvider<PetCache>.value(
          value: PetCache(),
        ),
      ],
      child: MaterialApp(
        onGenerateTitle: (context) => "Pet App",
        initialRoute: RouteGenerator.homePage,
        onGenerateRoute: RouteGenerator.generateRoute,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.cyan,
        ),
        home: FormLogin(),
      ),
    );
  }
}

// Navigator.of(context)?.pushNamed(RouteGenerator.randomPage);
