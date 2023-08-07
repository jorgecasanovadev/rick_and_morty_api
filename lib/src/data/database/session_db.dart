import 'dart:async';

import 'package:flutter_logs/flutter_logs.dart';
import 'package:sqflite/sqflite.dart';

import '../models/session/session_model.dart';
import 'db_provider.dart';

class SessionDB {
  SessionDB();
  final DBProvider dbProvider = DBProvider();

  Future<void> insertSession(SessionModel session) async {
    final db = await dbProvider.database;
    try {
      await db.insert(
        'sessions',
        session.toJson(),
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
    } catch (e) {
      unawaited(
        FlutterLogs.logThis(
          tag: 'sessions_db',
          subTag: 'insert_session_error',
          logMessage: e.toString(),
          level: LogLevel.ERROR,
        ),
      );
      rethrow;
    }
  }

  Future<SessionModel?> getSession() async {
    final db = await dbProvider.database;
    final List<Map<String, dynamic>> sessions = await db.query('sessions');

    if (sessions.isEmpty) {
      return null;
    }
    return SessionModel.fromJson(sessions);
  }

  Future<void> deleteSession() async {
    final db = await dbProvider.database;
    try {
      await db.delete('sessions');
    } catch (e) {
      unawaited(
        FlutterLogs.logThis(
          tag: 'sessions_db',
          subTag: 'delete_session_error',
          logMessage: e.toString(),
          level: LogLevel.ERROR,
        ),
      );
      rethrow;
    }
  }
}
