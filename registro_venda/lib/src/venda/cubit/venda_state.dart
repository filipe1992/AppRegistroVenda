part of 'venda_cubit.dart';

@immutable
abstract class VendaState {}

class VendaCreate extends VendaState {}

class VendaUpdate extends VendaState {
  VendaModel venda;

  VendaUpdate(this.venda);
}

class VendaList extends VendaState {
  List<VendaModel> vendas;

  VendaList(this.vendas);
}

class VendaDelete extends VendaState {
  VendaModel venda;

  VendaDelete(this.venda);
}

class VendaRead extends VendaState {
  VendaModel venda;

  VendaRead(this.venda);
}

class VendaLoad extends VendaState {
  String message;

  VendaLoad(this.message);

  @override
  String toString() {
    return message;
  }

}

class VendaError extends VendaState {
  String message;

  VendaError(this.message);

  @override
  String toString() {
    return message;
  }
}


