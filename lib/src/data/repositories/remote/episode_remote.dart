import '../../../ui/modules/episodes/model/episode_model.dart';
import '../../network/episodes_api.dart';
import '../../network/failure_handler.dart';

class EpisodeRemoteRepository {
  final episodesApi = EpisodesApi();

  Future<List<EpisodeModel>> getEpisodes() async {
    try {
      final episodes = await episodesApi.getEpisodes();
      return episodes;
    } on Failure {
      rethrow;
    }
  }
}
