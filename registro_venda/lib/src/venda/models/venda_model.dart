
const String tablevendaModel = 'vendaModel';
const String columnId = 'id';
const String columnIdTipo = 'idTipo';
const String columnIdTamanho = 'idTamanho';
const String columnPreco = 'preco';
const String columnIdCor = 'idCor';
const String columnIdCliente = 'idCliente';
const String columnDataHora = 'dataHora';

class vendaModel {
  int id;
  int idTipo;
  int idTamanho;
  double preco;
  int idCor;
  int idCliente;
  String dataHora;


  vendaModel(this.id, this.idTipo, this.idTamanho, this.preco, this.idCor,
      this.idCliente, this.dataHora);

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      columnIdTipo: idTipo,
      columnIdTamanho: idTamanho,
      columnPreco: preco,
      columnIdCor: idCor,
      columnIdCliente: idCliente,
      columnDataHora: dataHora
    };
    if (id != null) {
      map[columnId] = id;
    }
    return map;
  }

  vendaModel.fromMap(Map<String, dynamic> map):
        this(
          map[columnId],
          map[columnIdTipo],
          map[columnIdTamanho],
          map[columnPreco],
          map[columnIdCor],
          map[columnIdCliente],
          map[columnDataHora]
        );
}