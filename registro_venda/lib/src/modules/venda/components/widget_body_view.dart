import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:registro_venda/src/modules/venda/cubit/venda_cubit.dart';

import '../models/venda_model.dart';

class VendaView extends StatelessWidget {
  final VendaModel venda;

  VendaView(this.venda, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: venda.venda ? Colors.blue[100] : Colors.red[100],
      child: BlocBuilder<VendaCubit, VendaState>(
        builder: (context, state)
    {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Venda ${venda.venda ? "" : "não realizada "}!",
            style: const TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          ListTile(
            title: Text(venda.id.toString()),
            subtitle: const Text('Identificador'),
          ),
          ListTile(
            title: Text(venda.idTipo.toString()),
            subtitle: const Text('Tipo de Roupa'),
          ),
          ListTile(
            title: Text(venda.idTamanho.toString()),
            subtitle: const Text('Tamanho da roupa'),
          ),
          ListTile(
            title: Text('R\$ ${venda.preco.toString()}'),
            subtitle: const Text('Preço da roupa (R\$)'),
          ),
          ListTile(
            title: Text(venda.idCor.toString()),
            subtitle: const Text('Cor da Roupa'),
          ),
          ListTile(
            title: Text(venda.idCliente.toString()),
            subtitle: const Text('Cliente'),
          ),
          ListTile(
            title: Text(venda.dataHora.toString()),
            subtitle: const Text('Hora do registro'),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(onPressed: () {},
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.green,),

                ),
                child: Row(
                  children: const [
                    Icon(Icons.edit),
                    Text(" Editar"),
                  ],
                ),
              ),
              ElevatedButton(onPressed: () {
                  context.read<VendaCubit>().emit(VendaUpdate(venda),);
              },
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.red,),

                ),
                child: Row(
                  children: const [
                    Icon(Icons.delete),
                    Text(" Deletar"),
                  ],
                ),
              ),
            ],
          )
        ],
      );
    }
    ),
    );
  }
}
