import 'dart:developer';

import 'package:choppi_test/src/data/network/dio_handler.dart';
import 'package:choppi_test/src/data/network/failure_handler.dart';

import '../../ui/modules/characters/model/character_model.dart';

class CharactersApi {
  final String _characterApi = '/character';

  final DioHandler _dioHandler = DioHandler();

  Future<List<CharacterModel>> getCharacters() async {
    try {
      final data = await _dioHandler.get(_characterApi);
      final response = data.data['results'];
      final resultModel = <CharacterModel>[
        for (final character in response as List)
          CharacterModel.fromJson(character)
      ];
      log('lista de personajes: $resultModel');
      return resultModel;
    } on Failure catch (e) {
      log('Error ${e.statusCode}: ${e.message}');
      rethrow;
    }
  }
}
