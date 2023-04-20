import 'package:flutter/material.dart';

class CardError extends StatelessWidget {
  final String message;
  final Function funcao;

  const CardError(this.message, this.funcao, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: AlertDialog(
          title: const Text('Erro'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                const Icon(Icons.close),
                Text(message),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Voltar'),
              onPressed: () {
                funcao();
                print("fecha a tela");
              },
            ),
          ],
        ),
      ),
    );
  }
}
