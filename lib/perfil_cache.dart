import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:trabalho_pdm/model/pessoa.dart';
import 'package:trabalho_pdm/model/pet.dart';

class Cache extends ChangeNotifier {
  var _index = -1;
  var _indexP = -1;
  final List<Pessoa> _login = [
    //Pessoa("nome", "email", "senha"),
  ];

  final List<Pet> _pets = [
    //Pet(tipo, nome, raca, dataNasc),
  ];

  // Adiciona novos items na lista
  void addItem(String nome, String email, String senha) {
    _login.add(Pessoa(nome, email, senha));
    notifyListeners();
  }

  void addPet(String tipo, String nome, String raca, DateTime dataNasc) {
    _pets.add(Pet(tipo, nome, raca, dataNasc));
    notifyListeners();
  }

  // Recupera o index do último elemento selecionado.
  int get index => _index;
  int get indexP => _indexP;
  // Atualiza o index
  set index(int value) {
    if ((value >= 0) && (value < _login.length)) {
      _index = value;
    } else {
      _index = -1;
    }
  }

  set indexP(int value) {
    if ((value >= 0) && (value < _pets.length)) {
      _indexP = value;
    } else {
      _indexP = -1;
    }
  }

  UnmodifiableListView<Pet> get listPet => UnmodifiableListView<Pet>(_pets);
  UnmodifiableListView<Pessoa> get listPerfil =>
      UnmodifiableListView<Pessoa>(_login);
}
