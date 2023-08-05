part of 'episode_bloc.dart';

abstract class EpisodeEvent extends Equatable {
  const EpisodeEvent();

  @override
  List<Object> get props => [];
}

class OnLoadEpisodeEvent extends EpisodeEvent {
  const OnLoadEpisodeEvent({required this.episodes});
  final List<EpisodeModel> episodes;
}

class OnErrorLoadingEpisodeEvent extends EpisodeEvent {
  const OnErrorLoadingEpisodeEvent();
}

class OnToggleLoadingEpisodeEvent extends EpisodeEvent {
  const OnToggleLoadingEpisodeEvent({required this.isEpisodesLoading});
  final bool isEpisodesLoading;
}
