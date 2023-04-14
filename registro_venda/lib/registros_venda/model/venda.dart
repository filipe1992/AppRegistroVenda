
const String tableVenda = 'venda';
const String columnId = 'id';
const String columnIdTipo = 'idTipo';
const String columnIdTamanho = 'idTamanho';
const String columnPreco = 'preco';
const String columnIdCor = 'idCor';
const String columnIdCliente = 'idCliente';
const String columnDataHora = 'dataHora';

class Venda {
  int id;
  int idTipo;
  int idTamanho;
  double preco;
  int idCor;
  int idCliente;
  String dataHora;


  Venda(this.id, this.idTipo, this.idTamanho, this.preco, this.idCor,
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

  Venda.fromMap(Map<String, dynamic> map):
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