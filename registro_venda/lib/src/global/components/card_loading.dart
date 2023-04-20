import 'package:flutter/material.dart';

class CardLoanding extends StatelessWidget {
  final String message;
  const CardLoanding(this.message, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            title: const Text('Carregando'),
            subtitle: Text(message),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: CircularProgressIndicator(),
          ),
        ],
      ),
    );
  }
}
