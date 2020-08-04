import 'package:sqflite/sqflite.dart';

abstract class Migrations {
  static final _migrationMap = <int, void Function(Database db)> {
    1: (Database db) async {
      await db.execute('CREATE TABLE IF NOT EXISTS todos (id INTEGER PRIMARY KEY NOT NULL, title STRING, completed BOOLEAN)');
    }
  };

  static void runMigrations(Database db, int version) {
    return _migrationMap[version](db);
  }
}
