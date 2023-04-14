import 'package:sqflite/sqflite.dart';

import '../model/venda.dart';

class VendaProvider {
  Database db;

  Future open(String path) async {
    db = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
          await db.execute('''
create table $tableVenda ( 
  $columnId integer primary key autoincrement, 
  $columnIdTipo integer not null,
  $columnIdTamanho integer not null,
  $columnPreco real not null,
  $columnIdCor integer not null,
  $columnIdCliente integer,
  $columnDataHora text not null)
''');
        });
  }

  Future<Venda> insert(Venda venda) async {
    venda.id = await db.insert(tableVenda, venda.toMap());
    return venda;
  }

  Future<Venda?> getVenda(int id) async {
    List<Map> maps = await db.query(tableVenda,
        columns: [columnId, columnIdTipo, columnIdTamanho, columnPreco, columnIdCor, columnIdCliente, columnDataHora],
        where: '$columnId = ?',
        whereArgs: [id]);
    if (maps.length > 0) {
      return Venda.fromMap(maps.first as Map<String, dynamic>);
    }
    return null;
  }

  Future<int> delete(int id) async {
    return await db.delete(tableVenda, where: '$columnId = ?', whereArgs: [id]);
  }

  Future<int> update(Venda venda) async {
    return await db.update(tableVenda, venda.toMap(),
        where: '$columnId = ?', whereArgs: [venda.id]);
  }

  Future close() async => db.close();
}