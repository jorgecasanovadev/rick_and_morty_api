part of 'episode_bloc.dart';

@freezed
class EpisodeEvent with _$EpisodeEvent {
  factory EpisodeEvent.loading() = EpisodeLoading;
  factory EpisodeEvent.failed() = EpisodeFailed;
  factory EpisodeEvent.loaded() = EpisodeLoaded;
}
