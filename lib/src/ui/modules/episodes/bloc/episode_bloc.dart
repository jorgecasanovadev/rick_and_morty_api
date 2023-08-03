import 'package:bloc/bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/repositories/remote/episode_remote.dart';
import '../model/episode_model.dart';

part 'episode_bloc.freezed.dart';
part 'episode_event.dart';
part 'episode_state.dart';

class EpisodeBloc extends Bloc<EpisodeEvent, EpisodeState> {
  EpisodeBloc() : super(EpisodeState) {
    final episodeApi = EpisodeRemoteRepository();

    on<EpisodeLoading>((event, emit) async {
      emit(EpisodeState.loading());
      // ignore: inference_failure_on_instance_creation
      await Future.delayed(const Duration(milliseconds: 800));
    });
    on<EpisodeFailed>(
      (event, emit) => emit(EpisodeState.failed()),
    );
    on<EpisodeLoaded>(
      (event, emit) async {
        if (state is EpisodeLoaded) {
          emit(EpisodeLoading);
          final episodes = await episodeApi.getEpisodes();
          emit(EpisodeState.loaded(episodes: episodes));
        }
      },
    );
  }
}
