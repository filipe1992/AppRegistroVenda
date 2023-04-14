import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'registros_venda_cubit.dart';

class RegistrosVendaArguments {
  String param;

  RegistrosVendaArguments({
    required this.param,
  });
}

class RegistrosVendaPage extends StatelessWidget {
  final RegistrosVendaArguments arguments;

  const RegistrosVendaPage({
    Key? key,
    required this.arguments,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return RegistrosVendaCubit();
      },
      child: const RegistrosVendaChildPage(),
    );
  }
}

class RegistrosVendaChildPage extends StatefulWidget {
  const RegistrosVendaChildPage({Key? key}) : super(key: key);

  @override
  State<RegistrosVendaChildPage> createState() => _RegistrosVendaChildPageState();
}

class _RegistrosVendaChildPageState extends State<RegistrosVendaChildPage> {
  late final RegistrosVendaCubit _cubit;

  @override
  void initState() {
    super.initState();
    _cubit = BlocProvider.of(context);
    _cubit.loadInitialData();
  }

  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(),
       body: SafeArea(
         child: _buildBodyWidget(),
       ),
     );
  }

  Widget _buildBodyWidget() {
    return Container();
  }

  @override
  void dispose() {
    _cubit.close();
    super.dispose();
  }
}
