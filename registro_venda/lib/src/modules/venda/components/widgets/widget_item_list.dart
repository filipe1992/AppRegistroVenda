import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:registro_venda/src/modules/venda/cubit/venda_cubit.dart';
import 'package:registro_venda/src/global/models/venda_model.dart';

class VendaListTitle extends StatelessWidget {
  final VendaModel venda;

  const VendaListTitle(this.venda, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("${venda.idTipo}-${venda.idTamanho} ${venda.idCor}"),
      subtitle: Text("${venda.dataHora} - ${venda.venda ? venda.preco : 0}R\$"),
      tileColor: venda.venda ? Colors.blue[100] : Colors.red[100],
      onTap: () {
        print("Venda: $venda");
        context.read<VendaCubit>().visualizar(venda);
      },
    );
  }
}
