part of 'episode_bloc.dart';

@freezed
class EpisodeState with _$EpisodeState {
  factory EpisodeState.loading() = EpisodeStateLoading;
  factory EpisodeState.failed() = EpisodeStateFailed;
  factory EpisodeState.loaded({
    required List<EpisodeModel> episodes,
  }) = EpisodeStateLoaded;
}
