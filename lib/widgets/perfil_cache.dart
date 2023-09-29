// ignore_for_file: prefer_final_fields

import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:trabalho_pdm/models/pessoa.dart';

class Cache extends ChangeNotifier {
  var _index = -1;

  final List<Pessoa> _login = [
    //Pessoa("nome", "email", "senha"),
  ];


  // Adiciona novos items na lista
  void addItem(String nome, String email, String senha) {
    _login.add(Pessoa(nome, email, senha));
    notifyListeners();
  }


  // Recupera o index do último elemento selecionado.
  int get index => _index;

  // Atualiza o index
  set index(int value) {
    if ((value >= 0) && (value < _login.length)) {
      _index = value;
    } else {
      _index = -1;
    }
  }

  UnmodifiableListView<Pessoa> get listPerfil => UnmodifiableListView<Pessoa>(_login);
}
