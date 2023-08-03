import 'dart:convert';
import 'dart:developer';

import 'package:choppi_test/src/data/network/dio_handler.dart';
import 'package:choppi_test/src/data/network/failure_error_handler.dart';

class EpisodesApi {
  final String _episodeApi = '/episode';

  final DioHandler _dioHandler = DioHandler();

  Future<List<dynamic>> charactersList() async {
    try {
      final data = await _dioHandler.get(_episodeApi);
      final response = json.decode(data.data);
      final episodeModel = <dynamic>[];
      // TODO: Agregar modelo - character model
      // var episodeModel = <dynamic>[
      //   for (final character in response['results'])
      //     episodeModel.fromMap(character)
      // ];
      return episodeModel;
    } on Failure catch (e) {
      log('Error ${e.statusCode}: ${e.message}');
      rethrow;
    }
  }
}
