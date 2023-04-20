import 'package:flutter/material.dart';

class CardError extends StatelessWidget {
  final String message;

  const CardError(this.message, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Erro'),
      content: SingleChildScrollView(
        child: ListBody(
          children: <Widget>[
            Icon(icons.close),
            Text(message),
          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
          child: Text('Voltar'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
