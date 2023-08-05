part of 'episode_bloc.dart';

class EpisodeState extends Equatable {
  const EpisodeState({
    this.episodes = const [],
    this.episode,
    this.isEpisodesLoading = true,
    this.hasErrorLoadingEpisodes = false,
  }) : super();

  final bool isEpisodesLoading;
  final bool hasErrorLoadingEpisodes;
  final List<EpisodeModel> episodes;
  final EpisodeModel? episode;

  EpisodeState copyWith({
    List<EpisodeModel>? episodes,
    EpisodeModel? episode,
    bool? isEpisodesLoading,
    bool? hasErrorLoadingEpisodes,
  }) {
    return EpisodeState(
      episodes: episodes ?? this.episodes,
      episode: episode ?? this.episode,
      isEpisodesLoading: isEpisodesLoading ?? this.isEpisodesLoading,
      hasErrorLoadingEpisodes:
          hasErrorLoadingEpisodes ?? this.hasErrorLoadingEpisodes,
    );
  }

  @override
  List<Object?> get props => [
        episodes,
        episode,
        isEpisodesLoading,
        hasErrorLoadingEpisodes,
      ];
}
