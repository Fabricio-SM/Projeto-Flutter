import 'package:flutter/material.dart';
import 'package:trabalho_pdm/routes/tabs_page.dart';
import 'package:trabalho_pdm/routes/login_page.dart';

class RouteGenerator {
  static const String homePage = '/login_page.dart';
  static const String tabsPage = "/tabs_page.dart";
  static const String petPage = "/pet_page.dart";
  RouteGenerator._();
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homePage:
        return MaterialPageRoute(
          builder: (_) => FormLogin(),
        );
      case tabsPage:
        return MaterialPageRoute(
          builder: (_) => const TabsPage(),
        );
      case petPage:
        return MaterialPageRoute(
          builder: (_) => const TabsPage(),
        );
      default:
        throw const FormatException("Rota não encontrada");
    }
  }
}
