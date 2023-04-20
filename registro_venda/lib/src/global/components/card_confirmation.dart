import 'package:flutter/material.dart';

class CardConfirmation extends StatelessWidget {
  final String message;
  final Function funcao;

  const CardConfirmation(this.message, this.funcao,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
          title: Text('Confirmação'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(message),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Cancelar'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('Confirmar'),
              onPressed: () {
                funcao();
                Navigator.of(context).pop();
              },
            ),
          ],
        );
  }
}
