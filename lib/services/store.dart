import 'dart:async';
import 'package:sample_todo/services/store/migrations.dart';
import 'package:sample_todo/models/base-model.dart';
import 'package:sqflite/sqflite.dart';

abstract class Store {
  static Database _database;
  static const int _version = 1;

  static Future<void> init() async {
    try {
      if (_database != null) return;

      String path = await getDatabasesPath();
      _database = await openDatabase(path, version: _version, onCreate: onCreate);
    } catch(err) {
      print(err);
    }
  }

  static void onCreate(Database database, int version) {
    Migrations.runMigrations(database, version);
  }

  static Future<List<Map<String, dynamic>>> query(String table) => _database.query(table);

	static Future<int> insert(String table, Model model) => _database.insert(table, model.toMap());
	
	static Future<int> update(String table, Model model) => _database.update(table, model.toMap(), where: 'id = ?', whereArgs: [model.id]);

	static Future<int> delete(String table, Model model) => _database.delete(table, where: 'id = ?', whereArgs: [model.id]);
}
