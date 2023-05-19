import 'dart:developer';
import 'package:flutter/material.dart';

void main() => runApp(const BottomSheetApp());

class BottomSheetApp extends StatelessWidget {
  const BottomSheetApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Bottom Sheet Sample')),
        body: const BottomSheetExample(),
      ),
    );
  }
}

class BottomSheetExample extends StatelessWidget {
  const BottomSheetExample({super.key});

  Future<bool?> modal(context, String texto) async {
    final result = await showModalBottomSheet<bool>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          color: Colors.white,
          child: Center(
            child: AlertDialog(
              title: const Text('Confirmação'),
              content: SingleChildScrollView(
                child: ListBody(
                  children: <Widget>[
                    Text(texto),
                  ],
                ),
              ),
              actions: <Widget>[
                TextButton(
                  child: const Text('Cancelar'),
                  onPressed: () {
                    Navigator.pop(context, null);
                  },
                ),
                ElevatedButton(
                  child: const Text('Sim'),
                  onPressed: () {
                    Navigator.pop(context, true);
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ElevatedButton(
            child: const Text('showModalBottomSheet'),
            onPressed: () async {
              final result = await modal(
                  context, "Você deseja realmente finalizar essa tarefa?");

              log(result.toString());
            },
          ),
        ],
      ),
    );
  }
}
