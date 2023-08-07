import 'dart:async';

import 'package:flutter_logs/flutter_logs.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import '../../helpers/helpers.dart';

class DBProvider {
  DBProvider();
  DBProvider._();

  static const String _dbName = 'db_manager_v1.db';
  static final DBProvider db = DBProvider._();

  Future<Database> get database => initDB();

  Future<Database> initDB() async {
    return openDatabase(
      join(await getDatabasesPath(), _dbName),
      onCreate: (db, version) async {
        // create sessions table
        await db.execute('''
          CREATE TABLE sessions (
            id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL UNIQUE,
            username TEXT,
            name TEXT DEFAULT '',
            email TEXT DEFAULT '',
            createdOn DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL
          )
        ''');
      },
      onUpgrade: (db, oldVersion, newVersion) {
        try {
          Log.p.i('UPDATE DataBase: Done');
          Log.p.i('UPDATE oldVersion: $oldVersion');
          Log.p.i('UPDATE newVersion: $newVersion');
        } catch (e) {
          unawaited(
            FlutterLogs.logThis(
              tag: 'onUpgradeDB',
              subTag: 'error_upgrade_database',
              logMessage: e.toString(),
            ),
          );
        }
      },
      version: 1,
    );
  }

  Future<void> deleteDB() async {
    await deleteDatabase(join(await getDatabasesPath(), _dbName));
  }
}
