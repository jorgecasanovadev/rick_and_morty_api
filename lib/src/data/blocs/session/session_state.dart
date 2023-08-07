part of 'session_bloc.dart';

class SessionState extends Equatable {
  const SessionState({
    this.session,
  });
  final SessionModel? session;

  SessionState copyWith({
    SessionModel? session,
  }) {
    return SessionState(
      session: session ?? this.session,
    );
  }

  @override
  List<Object?> get props => [session];
}
