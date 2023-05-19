import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:registro_venda/src/modules/venda/cubit/venda_cubit.dart';
import 'package:registro_venda/src/modules/venda/components/widgets/widget_field_swich.dart';

class VendaCriarAtualizar extends StatefulWidget {
  const VendaCriarAtualizar({super.key});

  @override
  State<VendaCriarAtualizar> createState() => _VendaCriarAtualizarState();
}

class _VendaCriarAtualizarState extends State<VendaCriarAtualizar> {
  List<bool> estado = [false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VendaCubit, VendaState>(builder: (context, state) {
      return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Text(
            "Tipo de Registro",
            style: TextStyle(
              //color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => context.read<VendaCubit>().listar(),
          ),
        ),
        body: FieldSwich(),
      );
    });
  }
}
