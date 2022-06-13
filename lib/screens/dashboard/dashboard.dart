import 'package:alura_3provider/models/saldo.dart';
import 'package:alura_3provider/screens/dashboard/saldo.dart';
import 'package:alura_3provider/screens/transferencia/formulario.dart';
import 'package:alura_3provider/screens/transferencia/lista.dart';
import 'package:alura_3provider/screens/transferencia/ultimas.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:alura_3provider/screens/deposito/formulario.dart';

class Dashboard extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bytebank'),
      ),
      body: ListView(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: SaldoCard(),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FormularioDeposito()));
                },
                child: Text('Receber Depósito'),
              ),
              ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return FormularioTransferencia();
                }));
              }, child: Text('Nova Transferência'))
            ],
          ),

          UltimasTransferencias(),

        ],
      ),
    );
  }
}
