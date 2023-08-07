import 'dart:async';

import 'package:flutter_logs/flutter_logs.dart';

import '../../database/session_db.dart';
import '../../models/session/session_model.dart';
import '../abstract/session_repository.dart';

class SessionLocalRepository extends SessionRepository {
  final sessionDB = SessionDB();

  @override
  Future<SessionModel?> getSession() async {
    try {
      return await sessionDB.getSession();
    } catch (e) {
      unawaited(
        FlutterLogs.logThis(
          tag: 'session_local',
          subTag: 'errors_get_session',
          logMessage: e.toString(),
          level: LogLevel.ERROR,
        ),
      );
      rethrow;
    }
  }

  @override
  Future<void> insertSession(SessionModel session) async {
    try {
      return await sessionDB.insertSession(session);
    } catch (e) {
      unawaited(
        FlutterLogs.logThis(
          tag: 'session_local',
          subTag: 'errors_on_create',
          logMessage: e.toString(),
          level: LogLevel.ERROR,
        ),
      );
      rethrow;
    }
  }

  @override
  Future<void> deleteSession() async {
    try {
      return await sessionDB.deleteSession();
    } catch (e) {
      unawaited(
        FlutterLogs.logThis(
          tag: 'session_local',
          subTag: 'errors_on_delete',
          logMessage: e.toString(),
          level: LogLevel.ERROR,
        ),
      );
      rethrow;
    }
  }
}
