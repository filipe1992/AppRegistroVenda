import 'package:flutter/material.dart';

class VendaPage extends StatefulWidget {
  const VendaPage({Key? key}) : super(key: key);

  @override
  _VendaPageState createState() => _VendaPageState();
}

class _VendaPageState extends State<VendaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("texto da pagina")
      )
    );
  }
}
