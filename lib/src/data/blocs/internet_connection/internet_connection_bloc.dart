import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import '../../../ui/utils/toast.dart';

part 'internet_connection_event.dart';
part 'internet_connection_state.dart';

class InternetConnectionBloc
    extends Bloc<InternetConnectionEvent, InternetConnectionState> {
  InternetConnectionBloc() : super(const InternetConnectionState()) {
    on<InternetConnectionEvent>((event, emit) {});

    // Init internet connection
    on<OnInitInternetConnectionEvent>((event, emit) {
      emit(
        state.copyWith(
          isInitialized: true,
          isActive: event.isActive,
        ),
      );
    });
    // On active internet connection
    on<OnActivateInternetConnectionEvent>((event, emit) {
      emit(state.copyWith(isActive: true));
    });

    // On deactive internet connection
    on<OnDeactivateInternetConnectionEvent>((event, emit) {
      emit(state.copyWith(isActive: false));
    });
    _init();
  }
  StreamSubscription<dynamic>? listener;

  Future<void> _init() async {
    final result = await InternetConnectionChecker().hasConnection;
    if (!result) {
      unawaited(
        ToastMessages.showToast(
          'Rayos te encuentras sin conexión a internet',
        ),
      );
    }
    add(OnInitInternetConnectionEvent(isActive: result));

    listener = InternetConnectionChecker().onStatusChange.listen((status) {
      switch (status) {
        case InternetConnectionStatus.connected:
          if (state.isActive != true && state.isInitialized == true) {
            ToastMessages.showToast(
              'Conectado a internet',
            );
            add(OnActivateInternetConnectionEvent());
          }
        case InternetConnectionStatus.disconnected:
          if (state.isActive != false && state.isInitialized == true) {
            ToastMessages.showToast(
              'Rayos te encuentras sin conexión a internet',
            );
            add(OnDeactivateInternetConnectionEvent());
          }
      }
    });
  }

  @override
  Future<void> close() {
    listener?.cancel();
    return super.close();
  }
}
