import '../../models/session/session_model.dart';

abstract class SessionRepository {
  Future<void> insertSession(SessionModel session);
  Future<SessionModel?> getSession();
  Future<void> deleteSession();
}
