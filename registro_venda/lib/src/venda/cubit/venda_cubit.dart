import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'venda_state.dart';

class VendaCubit extends Cubit<VendaState> {
  final VendaRepository repository;

  VendaCubit() : super(VendaCreate()){
    openDatabase();
  }

  void openDatabase() async {
    try{
      repository.open();
    } catch (e){
      emit(VendaError(e.toString()))
    }
  }
  

}
