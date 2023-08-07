import 'dart:async';

import 'package:choppi_test/src/data/blocs/session/session_bloc.dart';
import 'package:choppi_test/src/data/models/session/session_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../ui/utils/toast.dart';
import '../blocs.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({required this.sessionBloc, required this.internetConnectionBloc})
      : super(const AuthState()) {
    on<AuthEvent>((event, emit) {
      emit(
        state.copyWith(
          isLoading: event.isLoading,
          isAuthorized: event.isAuthorized,
          displayUIState: event.displayUIState,
        ),
      );
    });

    on<OnInitAuthEvent>((event, emit) {
      emit(const AuthState());
    });

    on<OnRegisterEvent>((event, emit) {
      emit(const AuthState());
    });
  }

  final SessionBloc sessionBloc;
  final InternetConnectionBloc internetConnectionBloc;

  Future<String> _generateSession({required String username}) async {
    final currentSession = await sessionBloc.getSession();
    if (currentSession == null) {
      await sessionBloc.insertSession(
        SessionModel(
          username: username,
          name: 'Name',
          email: 'Email',
          createdOn: DateTime.now(),
        ),
      );
      add(
        const AuthEvent(
          isLoading: false,
          isAuthorized: true,
        ),
      );
      return 'newSession';
    } else {
      if (currentSession.username != username) {
        await sessionBloc.insertSession(
          SessionModel(
            username: username,
            name: 'Name',
            email: 'Email',
            createdOn: DateTime.now(),
          ),
        );
        add(
          const AuthEvent(
            isLoading: false,
            isAuthorized: true,
          ),
        );
        return 'changeUser';
      } else {
        sessionBloc.add(OnLoadSessionEvent(session: currentSession));
        add(
          const AuthEvent(
            isLoading: false,
            isAuthorized: true,
          ),
        );
        return 'restoreSession';
      }
    }
  }

  Future<Map<String, String>?> onLogin({
    required String username,
    required String password,
  }) async {
    if (!internetConnectionBloc.state.isActive) {
      unawaited(
        ToastMessages.showToast(
          'No tienes conexión a internet para ingresar.',
        ),
      );
      return null;
    }
    add(const AuthEvent(isLoading: true));
    //TODO:
    return null;
  }
}
