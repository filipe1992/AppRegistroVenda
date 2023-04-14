part of 'registros_venda_cubit.dart';

class RegistrosVendaState extends Equatable {
  final LoadStatus loadDataStatus;

  const RegistrosVendaState({
    this.loadDataStatus = LoadStatus.initial,
  });

  @override
  List<Object?> get props => [
        loadDataStatus,
      ];

  RegistrosVendaState copyWith({
    LoadStatus? loadDataStatus,
  }) {
    return RegistrosVendaState(
      loadDataStatus: loadDataStatus ?? this.loadDataStatus,
    );
  }
}
