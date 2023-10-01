// ignore_for_file: prefer_const_constructors

import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:trabalho_pdm/models/pet.dart';

class PetCache extends ChangeNotifier {
  var _indexP = -1;

  final List<Pet> _pets = [
    Pet('Cão', 'Rex', 'Golden Retriever', '2018-05-15'),
    Pet('Gato', 'Whiskers', 'Siamese', '2019-08-10'),
    Pet('Cão', 'Buddy', 'Labrador', '2017-03-25'),
    Pet('Gato', 'Luna', 'Persian', '2020-11-08'),
  ];

  void addPet(String tipo, String nome, String raca, String dataNasc) {
    _pets.add(Pet(tipo, nome, raca, dataNasc));
    notifyListeners();
    addItem(_pets, _indexP);
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

  final Map<String, List<Pet>> _itemsByTipo = {};

  Map<String, List<Pet>> get itemsByTipo => _itemsByTipo;

  void addItem(List<Pet> pet, int index) {
    final tipo = pet[index].tipo;

    if (!_itemsByTipo.containsKey(tipo)) {
      _itemsByTipo[tipo] = [];
    }
    //_itemsByTipo[tipo]?.add(_pets);
    notifyListeners();
  }

  List<Pet> getItemsByTipo(String tipo) {
    return _itemsByTipo[tipo] ?? [];
  }
}
