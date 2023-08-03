import '../../../ui/modules/characters/model/character_model.dart';
import '../../network/characters_api.dart';
import '../../network/failure_handler.dart';

class CharacterRemoteRepository {
  final charactersApi = CharactersApi();

  Future<List<CharacterModel>> getCharacters() async {
    try {
      final characters = await charactersApi.getCharacters();
      return characters;
    } on Failure {
      rethrow;
    }
  }
}
