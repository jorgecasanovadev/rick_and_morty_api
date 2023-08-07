import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_logs/flutter_logs.dart';

import '../../../ui/utils/toast.dart';
import '../../models/session/session_model.dart';
import '../../network/failure_handler.dart';
import '../../repositories/local/session_local.dart';
import '../blocs.dart';

part 'session_event.dart';
part 'session_state.dart';

class SessionBloc extends Bloc<SessionEvent, SessionState> {
  SessionBloc({required this.internetConnectionBloc})
      : super(const SessionState()) {
    on<SessionEvent>((event, emit) {});

    on<OnLoadSessionEvent>((event, emit) {
      emit(
        state.copyWith(session: event.session),
      );
    });

    on<OnClearSessionEvent>((event, emit) {
      emit(
        state.copyWith(),
      );
    });
  }

  final _sessionLocal = SessionLocalRepository();
  final InternetConnectionBloc internetConnectionBloc;

  Future<void> insertSession(SessionModel session) async {
    await _sessionLocal.insertSession(session);
    add(OnLoadSessionEvent(session: session));
  }

  Future<String> getInitScreenName() async {
    if (internetConnectionBloc.state.isActive) {
      // final token = await fetchToken.getAccessToken();
      const token = null;
      if (token != null) {
        try {
          final currentUser = await _sessionLocal.getSession();
          add(OnLoadSessionEvent(session: currentUser));
          return '/';
        } on Failure catch (e) {
          unawaited(
            FlutterLogs.logThis(
              tag: 'session_local',
              subTag: 'failure_error',
              logMessage: e.toString(),
            ),
          );
        } catch (e) {
          unawaited(
            FlutterLogs.logThis(
              tag: 'session_local',
              subTag: 'general_error',
              logMessage: e.toString(),
              level: LogLevel.ERROR,
            ),
          );
          unawaited(
            ToastMessages.showToast(
              'Hubo un error al cargar su sesion, ingrese nuevamente.',
            ),
          );
        }
      } else {
        return '/login';
      }
    }

    final currentUser = await _sessionLocal.getSession();

    if (currentUser != null) {
      add(OnLoadSessionEvent(session: currentUser));
      return '/home';
    } else {
      return '/login';
    }
  }

  Future<void> deleteSession() async {
    try {
      await _sessionLocal.deleteSession();
      add(const OnClearSessionEvent());
    } catch (e) {
      unawaited(
        FlutterLogs.logThis(
          tag: 'session_local',
          subTag: 'delete_session_error',
          logMessage: e.toString(),
          level: LogLevel.ERROR,
        ),
      );
    }
  }

  Future<SessionModel?> getSession() async {
    final result = await _sessionLocal.getSession();
    return result;
  }
}
