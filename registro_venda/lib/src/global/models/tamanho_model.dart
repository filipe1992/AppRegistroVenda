import 'dart:convert';

const String tableVendaModel = 'TamanhoModel';
const String columnId = 'id';
const String columnNome = 'nome';
const String columnDescricao = 'descricao';

class TamanhoModel {
  int id;
  String nome;
  String descricao;

  TamanhoModel(this.id, this.nome, this.descricao);

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      columnNome: nome,
      columnDescricao: descricao,
    };
    map[columnId] = id;
    return map;
  }

  TamanhoModel.fromMap(Map<String, dynamic> map)
      : this(
          map[columnId],
          map[columnNome],
          map[columnDescricao],
        );

  String toJson() => json.encode(toMap());

  factory TamanhoModel.fromJson(String source) =>
      TamanhoModel.fromMap(json.decode(source));

  // Implement toString to make it easier to see information about
  // each dog when using the print statement.
  @override
  String toString() {
    return 'Tamanho(id: $id, nome: $nome, descrição: $descricao)';
  }
}
