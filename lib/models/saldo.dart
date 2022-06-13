import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Saldo extends ChangeNotifier{
  double valor;

  Saldo(this.valor);

  void adiciona (double valor){
    this.valor += valor;

    notifyListeners();
}


  void subtrai (double valor){
    this.valor -= valor;

    notifyListeners();
  }

  @override
  String toString() => 'R\$ $valor';
}
