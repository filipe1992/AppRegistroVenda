import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:registro_venda/src/global/models/tamanho_model.dart';
import 'package:registro_venda/src/global/models/venda_model.dart';
import 'package:registro_venda/src/modules/venda/repository/venda_repository.dart';

part 'venda_state.dart';

class VendaCubit extends Cubit<VendaState> {
  final VendaRepository repository;

  VendaCubit(this.repository) : super(VendaLoad("Carregando...")) {
    openDatabase();
  }

  void openDatabase() async {
    try {
      repository.open("registro_venda/database/local.db");
      await Future<void>.delayed(const Duration(milliseconds: 50));
      listar();
    } catch (e) {
      emit(VendaError(e.toString()));
    }
  }

  Future<void> listar() async {
    List<VendaModel> vendas = [
      VendaModel(10, 20, 36, 200.35, 1, 500, false, "23/10/2023 12:51"),
      VendaModel(102, 20, 36, 200.35, 1, 500, false, "23/10/2023 12:51"),
      VendaModel(103, 20, 36, 200.35, 1, 500, true, "23/10/2023 12:51"),
      VendaModel(104, 20, 36, 200.35, 1, 500, true, "23/10/2023 12:51"),
      VendaModel(105, 20, 36, 200.35, 1, 500, false, "23/10/2023 12:51"),
      VendaModel(106, 20, 36, 200.35, 1, 500, false, "23/10/2023 12:51"),
      VendaModel(107, 20, 36, 200.35, 1, 500, false, "23/10/2023 12:51"),
      VendaModel(108, 20, 36, 200.35, 1, 500, true, "23/10/2023 12:51"),
      VendaModel(109, 20, 36, 200.35, 1, 500, true, "23/10/2023 12:51"),
      VendaModel(10, 20, 36, 200.35, 1, 500, false, "23/10/2023 12:51"),
      VendaModel(11, 20, 36, 200.35, 1, 500, false, "23/10/2023 12:51"),
      VendaModel(12, 20, 36, 200.35, 1, 500, false, "23/10/2023 12:51"),
      VendaModel(13, 20, 36, 200.35, 1, 500, true, "23/10/2023 12:51"),
      VendaModel(14, 20, 36, 200.35, 1, 500, true, "23/10/2023 12:51"),
      VendaModel(115, 20, 36, 200.35, 1, 500, false, "23/10/2023 12:51"),
      VendaModel(16, 20, 36, 200.35, 1, 500, false, "23/10/2023 12:51"),
      VendaModel(17, 20, 36, 200.35, 1, 500, false, "23/10/2023 12:51"),
      VendaModel(18, 20, 36, 200.35, 1, 500, true, "23/10/2023 12:51"),
      VendaModel(19, 20, 36, 200.35, 1, 500, true, "23/10/2023 12:51"),
      VendaModel(111, 20, 36, 200.35, 1, 500, false, "23/10/2023 12:51"),
    ];

    try {
      emit(
        VendaList(vendas),
      );
    } catch (e) {
      emit(VendaError(e.toString()));
    }
  }

  void visualizar(VendaModel venda) async {
    try {
      emit(VendaRead(venda));
    } catch (e) {
      emit(VendaError(e.toString()));
    }
  }

  void cadastrar() {
    try {
      print("tá aqui ?");
      emit(VendaCreate(const []));
    } catch (e) {
      emit(VendaError(e.toString()));
    }
  }

  void atualizar(VendaModel venda) {
    try {
      print("tá aqui ?");
      emit(VendaUpdate(venda));
    } catch (e) {
      emit(VendaError(e.toString()));
    }
  }
}
