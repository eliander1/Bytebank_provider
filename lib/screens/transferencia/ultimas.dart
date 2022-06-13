import 'package:alura_3provider/models/transferencias.dart';
import 'package:alura_3provider/screens/transferencia/lista.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

final _titulo = 'Últimas Transferencias';

class UltimasTransferencias extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(children: [

      Text(_titulo, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),

      Consumer<Transferencias>(builder: (context, transferencias, child){
        final _ultimasTransferencias = transferencias.transferencias.reversed.toList();
        final _quantidade = transferencias.transferencias.length;

        int tamanho = 2;

        if(_quantidade == 0 ) {
          return SemTransferencia();
        }
        if (_quantidade < 2){
          tamanho = _quantidade;
        }

        return ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: tamanho,
        shrinkWrap: true,
        itemBuilder: (context, indice){
          return ItemTransferencia(_ultimasTransferencias[indice]);
    });
    }),
      ElevatedButton(onPressed: () {Navigator.push(
        context, MaterialPageRoute(builder: (context) => ListaTransferencias()));},
        child: const Text('Ver Todas as Transferências'),),


    ],);
  }
}

class SemTransferencia extends StatelessWidget {
  const SemTransferencia({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Card(
      margin: const EdgeInsets.all(40),
      child: const Padding(
        padding: EdgeInsets.all(10),
        child: Text('Sem Transferências Cadastradas',
          textAlign: TextAlign.center
        ),
      ),
    );
  }
}

