import 'package:flutter/material.dart';
import 'package:registro_venda/src/modules/venda/cubit/venda_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'components/body_list.dart';
import 'components/body_view.dart';
import 'components/body_create_update.dart';

class VendaPage extends StatelessWidget {
  VendaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<VendaCubit, VendaState>(
        builder: (context, state) {
          if (state is VendaList) {
            print(state.runtimeType);
            return VendaLista(
              state.vendas,
            );
          } else if (state is VendaRead) {
            print(state.runtimeType);
            return VendaView();
          } else if (state is VendaCreate) {
            print(state.runtimeType);
            return VendaCriarAtualizar();
          } else {
            return Container();
          }
        },
      ),
      floatingActionButton:
          BlocBuilder<VendaCubit, VendaState>(builder: (context, state) {
        if (state is VendaList) {
          return FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () => context.read<VendaCubit>().cadastrar(),
          );
        } else {
          return Container();
        }
      }),
    );
  }
}
