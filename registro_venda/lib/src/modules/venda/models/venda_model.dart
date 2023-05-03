const String tableVendaModel = 'VendaModel';
const String columnId = 'id';
const String columnIdTipo = 'idTipo';
const String columnIdTamanho = 'idTamanho';
const String columnPreco = 'preco';
const String columnIdCor = 'idCor';
const String columnIdCliente = 'idCliente';
const String columnVenda = 'venda';
const String columnDataHora = 'dataHora';

class VendaModel {
  int id;
  int idTipo;
  int idTamanho;
  double preco;
  int idCor;
  int idCliente;
  bool venda;
  String dataHora;

  VendaModel(this.id, this.idTipo, this.idTamanho, this.preco, this.idCor,
      this.idCliente, this.venda, this.dataHora);

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      columnIdTipo: idTipo,
      columnIdTamanho: idTamanho,
      columnPreco: preco,
      columnIdCor: idCor,
      columnIdCliente: idCliente,
      columnVenda: venda,
      columnDataHora: dataHora
    };
    if (id != null) {
      map[columnId] = id;
    }
    return map;
  }

  VendaModel.fromMap(Map<String, dynamic> map)
      : this(
            map[columnId],
            map[columnIdTipo],
            map[columnIdTamanho],
            map[columnPreco],
            map[columnIdCor],
            map[columnIdCliente],
            map[columnVenda],
            map[columnDataHora]);
}
