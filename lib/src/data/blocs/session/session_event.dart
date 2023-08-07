part of 'session_bloc.dart';

abstract class SessionEvent extends Equatable {
  const SessionEvent();

  @override
  List<Object> get props => [];
}

class OnLoadSessionEvent extends SessionEvent {
  const OnLoadSessionEvent({
    required this.session,
  });
  final SessionModel session;
}

class OnClearSessionEvent extends SessionEvent {
  const OnClearSessionEvent();
}
