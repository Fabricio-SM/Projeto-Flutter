import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:trabalho_pdm/models/pet.dart';

class PetCache extends ChangeNotifier {
  var _indexP = -1;

  final List<Pet> _pets = [
    //Pet(tipo, nome, raca, dataNasc),
  ];

  void addPet(String tipo, String nome, String raca, DateTime dataNasc) {
    _pets.add(Pet(tipo, nome, raca, dataNasc));
    notifyListeners();
  }

  // Recupera o index do último elemento selecionado.
  int get indexP => _indexP;
  // Atualiza o index

  set indexP(int value) {
    if ((value >= 0) && (value < _pets.length)) {
      _indexP = value;
    } else {
      _indexP = -1;
    }
  }

  UnmodifiableListView<Pet> get listPet => UnmodifiableListView<Pet>(_pets);
}
