import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:registro_venda/src/modules/venda/cubit/venda_cubit.dart';
import 'package:registro_venda/src/global/models/venda_model.dart';
import 'package:registro_venda/src/modules/venda/components/widgets/widget_item_list.dart';

class VendaLista extends StatefulWidget {
  final List<VendaModel> vendas;

  const VendaLista(this.vendas, {Key? key}) : super(key: key);

  @override
  State<VendaLista> createState() => _VendaListaState();
}

class _VendaListaState extends State<VendaLista> {
  int filtro = 0;
  List<VendaModel> _vendas = [];

  List<VendaModel> sublists(int opcao) {
    if (opcao == 1) {
      return widget.vendas.where((venda) => venda.venda).toList();
    } else if (opcao == 2) {
      return widget.vendas.where((venda) => !venda.venda).toList();
    } else {
      return widget.vendas;
    }
  }

  @override
  Widget build(BuildContext context) {
    setState(() {
      _vendas = sublists(filtro);
    });

    return BlocBuilder<VendaCubit, VendaState>(builder: (context, state) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Registros"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Container(
              color: Colors.black,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text(
                      "Filtros:",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(
                      child: Text(
                        "Vendas realizadas",
                        style: TextStyle(
                          color: Colors.blue[100],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          filtro = 1;
                        });
                      },
                    ),
                    TextButton(
                      child: Text(
                        "Vendas Não realizadas",
                        style: TextStyle(
                          color: Colors.red[100],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          filtro = 2;
                        });
                      },
                    ),
                    TextButton(
                      child: const Text(
                        "Tudo",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          filtro = 0;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _vendas.length,
                itemBuilder: (BuildContext context, int index) {
                  return VendaListTitle(
                    _vendas[index],
                  );
                },
              ),
            ),
          ],
        ),
      );
    });
  }
}
