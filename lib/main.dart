import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          body: ListTransition(),
          appBar: AppBar(
            title: Text('Teste'),
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              // Add your onPressed code here!
            },
          ),
        ),
      ),
    );

class ListTransition extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      ItemTransition(Transition(100.0, 1000)),
      ItemTransition(Transition(300.0, 1001)),
      ItemTransition(Transition(200.0, 1002)),
    ]);
  }
}

class ItemTransition extends StatelessWidget {
  // ignore: unused_field
  final Transition _transition;

  const ItemTransition(this._transition);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text(_transition.valor.toString()),
        subtitle: Text(_transition.numeroConta.toString()),
      ),
    );
  }
}

class Transition {
  final double valor;
  final int numeroConta;

  Transition(this.valor, this.numeroConta);
}
