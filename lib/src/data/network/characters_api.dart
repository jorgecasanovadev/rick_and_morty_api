import 'dart:convert';
import 'dart:developer';

import 'package:choppi_test/src/data/network/dio_handler.dart';
import 'package:choppi_test/src/data/network/failure_error_handler.dart';

class CharactersApi {
  final String _characterApi = '/character';

  final DioHandler _dioHandler = DioHandler();

  Future<List<dynamic>> charactersList() async {
    try {
      final data = await _dioHandler.get(_characterApi);
      final response = json.decode(data.data);
      final characterModel = <dynamic>[];
      // TODO: Agregar modelo - character model
      // var characterModel = <dynamic>[
      //   for (final character in response['results'])
      //     CharacterModel.fromMap(character)
      // ];
      return characterModel;
    } on Failure catch (e) {
      log('Error ${e.statusCode}: ${e.message}');
      rethrow;
    }
  }
}
