import 'package:registro_venda/src/modules/venda/models/venda_model.dart';
import 'package:sqflite/sqflite.dart';

class VendaRepository {
  late Database db;

  Future open(String path) async {
    db = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
      await db.execute('''
create table $tableVendaModel ( 
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

  Future<VendaModel> insert(VendaModel venda) async {
    venda.id = await db.insert(tableVendaModel, venda.toMap());
    return venda;
  }

  Future<VendaModel?> getVenda(int id) async {
    List<Map> maps = await db.query(tableVendaModel,
        columns: [
          columnId,
          columnIdTipo,
          columnIdTamanho,
          columnPreco,
          columnIdCor,
          columnIdCliente,
          columnDataHora
        ],
        where: '$columnId = ?',
        whereArgs: [id]);
    if (maps.length > 0) {
      return VendaModel.fromMap(maps.first as Map<String, dynamic>);
    }
    return null;
  }

  Future<int> delete(int id) async {
    return await db.delete(tableVendaModel, where: '$columnId = ?', whereArgs: [id]);
  }

  Future<int> update(VendaModel venda) async {
    return await db.update(tableVendaModel, venda.toMap(),
        where: '$columnId = ?', whereArgs: [venda.id]);
  }

  Future close() async => db.close();
}
