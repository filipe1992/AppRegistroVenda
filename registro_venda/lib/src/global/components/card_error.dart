import 'package:flutter/material.dart';

class CardError extends StatelessWidget {
  final String message;

  const CardError(this.message, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
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
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
