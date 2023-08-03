import 'dart:developer';

import 'package:choppi_test/src/data/network/dio_handler.dart';
import 'package:choppi_test/src/data/network/failure_handler.dart';

import '../../ui/modules/episodes/model/episode_model.dart';

class EpisodesApi {
  final String _episodeApi = '/episode';

  final DioHandler _dioHandler = DioHandler();

  Future<List<EpisodeModel>> getEpisodes() async {
    try {
      final data = await _dioHandler.get(_episodeApi);
      final response = data.data['results'];
      final resultModel = <EpisodeModel>[
        for (final episode in response as List) EpisodeModel.fromJson(episode)
      ];
      log('lista de episodios: $resultModel');
      return resultModel;
    } on Failure catch (e) {
      log('Error ${e.statusCode}: ${e.message}');
      rethrow;
    }
  }
}
