import 'package:flutter/material.dart';

import '../../global/components/card_error.dart';
import 'components/widget_body_view.dart';
import 'models/venda_model.dart';

class VendaPage extends StatefulWidget {
  const VendaPage({Key? key}) : super(key: key);

  @override
  _VendaPageState createState() => _VendaPageState();
}

class _VendaPageState extends State<VendaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: VendaView(
        VendaModel(10, 20, 36, 200.35, 1, 500, false, "23/10/2023 12:51"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
    );
  }
}
