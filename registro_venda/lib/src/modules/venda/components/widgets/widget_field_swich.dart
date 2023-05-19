import 'package:flutter/material.dart';

class FieldSwich extends StatefulWidget {
  FieldSwich({Key? key}) : super(key: key);

  @override
  _FieldSwichState createState() => _FieldSwichState();
}

class _FieldSwichState extends State<FieldSwich> {
  bool _switchValue = false;
  String textoFalse = "Não é venda";
  String textoTrue = "venda";
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox.expand(
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.blue;
                    }
                    return Colors.blue.shade100; // Cor de fundo do botão
                  },
                ),
              ),
              child: const Text(
                "Venda",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: SizedBox.expand(
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.red;
                    }
                    return Colors.red.shade100; // Cor de fundo do botão
                  },
                ),
              ),
              child: const Text(
                "Registro",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
