import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:registro_venda/src/modules/venda/models/venda_model.dart';
import 'package:registro_venda/src/modules/venda/repository/venda_repository.dart';

part 'venda_state.dart';

class VendaCubit extends Cubit<VendaState> {
  final VendaRepository repository;

  VendaCubit(this.repository) : super(VendaCreate()) {
    openDatabase();
  }

  void openDatabase() async {
    try {
      repository.open("");
    } catch (e) {
      emit(VendaError(e.toString()));
    }
  }
}
