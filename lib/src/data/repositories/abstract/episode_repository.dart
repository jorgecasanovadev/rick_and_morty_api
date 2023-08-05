import '../../../ui/modules/episodes/model/episode_model.dart';

// ignore: one_member_abstracts
abstract class EpisodeRepository {
  Future<List<EpisodeModel>> getEpisodes();
}
