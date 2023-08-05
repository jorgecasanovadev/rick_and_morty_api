import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_logs/flutter_logs.dart';

import '../../../../data/network/failure_handler.dart';
import '../../../../data/repositories/remote/episode_remote.dart';
import '../../../utils/toast.dart';
import '../model/episode_model.dart';

part 'episode_event.dart';
part 'episode_state.dart';

class EpisodeBloc extends Bloc<EpisodeEvent, EpisodeState> {
  EpisodeBloc() : super(const EpisodeState()) {
    on<EpisodeEvent>((event, emit) {});

    on<OnToggleLoadingEpisodeEvent>((event, emit) {
      if (state.isEpisodesLoading != event.isEpisodesLoading) {
        emit(state.copyWith(isEpisodesLoading: event.isEpisodesLoading));
      }
    });

    on<OnLoadEpisodeEvent>((event, emit) {
      emit(
        state.copyWith(
          isEpisodesLoading: false,
          hasErrorLoadingEpisodes: false,
          episodes: [...event.episodes],
        ),
      );
    });

    on<OnErrorLoadingEpisodeEvent>((event, emit) {
      emit(
        state.copyWith(
          hasErrorLoadingEpisodes: true,
          isEpisodesLoading: false,
        ),
      );
    });
  }

  final apiRemote = EpisodeRemoteRepository();

  Future<void> loadEpisodes() async {
    add(const OnToggleLoadingEpisodeEvent(isEpisodesLoading: true));
    final episodes = <EpisodeModel>[];
    try {
      // if (internetConnectionBloc.state.isActive) {
      episodes.addAll(await apiRemote.getEpisodes());
      add(OnLoadEpisodeEvent(episodes: episodes));
      // } else {
      // unawaited(
      // ToastMessages.showError('No cuenta con conexión a internet'),
      // );
      // }
    } on Failure catch (e) {
      unawaited(
        FlutterLogs.logThis(
          tag: 'episode_api',
          subTag: 'error',
          logMessage: e.toString(),
        ),
      );
      switch (e.statusCode) {
        case 408:
          unawaited(
            ToastMessages.showToast(
              'Problemas de conexión, tiempo de espera excedido',
            ),
          );
        case 401:
          unawaited(
            ToastMessages.showToast('No se encuentra autorizado para acceder.'),
          );
        default:
          add(const OnErrorLoadingEpisodeEvent());
      }
    } catch (e) {
      unawaited(
        FlutterLogs.logThis(
          tag: 'episode_api',
          subTag: 'error',
          logMessage: e.toString(),
          level: LogLevel.ERROR,
        ),
      );
      add(const OnErrorLoadingEpisodeEvent());
      unawaited(
        ToastMessages.showToast('Error al cargar los episodios'),
      );
    } finally {
      add(const OnToggleLoadingEpisodeEvent(isEpisodesLoading: false));
    }
  }
}
