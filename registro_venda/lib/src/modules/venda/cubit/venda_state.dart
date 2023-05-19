part of 'venda_cubit.dart';

@immutable
abstract class VendaState {}

class VendaCreate extends VendaState {
  final List<TamanhoModel> tamanhos;

  VendaCreate(this.tamanhos);
}

class VendaUpdate extends VendaState {
  final VendaModel venda;

  VendaUpdate(this.venda);
}

class VendaList extends VendaState {
  final List<VendaModel> vendas;

  VendaList(this.vendas);
}

class VendaDelete extends VendaState {
  final VendaModel venda;

  VendaDelete(this.venda);
}

class VendaRead extends VendaState {
  final VendaModel venda;

  VendaRead(this.venda);
}

class VendaLoad extends VendaState {
  final String message;

  VendaLoad(this.message);

  @override
  String toString() {
    return message;
  }
}

class VendaError extends VendaState {
  final String message;

  VendaError(this.message);

  @override
  String toString() {
    return message;
  }
}
