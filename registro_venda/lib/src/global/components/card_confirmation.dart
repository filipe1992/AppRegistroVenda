import 'package:flutter/material.dart';

class CardConfirmation extends StatelessWidget {
  final String message;
  final Function funcao;
  final Function funcaoCancela;

  const CardConfirmation(this.message, this.funcao, this.funcaoCancela,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: AlertDialog(
          title: const Text('Confirmação'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(message),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Cancelar'),
              onPressed: () {
                print("cancelou");
                funcaoCancela();
              },
            ),
            ElevatedButton(
              child: const Text('Não'),
              onPressed: () {
                Navigator.pop(context, false);
              },
            ),
          ],
        ),
      ),
    );
  }
}
