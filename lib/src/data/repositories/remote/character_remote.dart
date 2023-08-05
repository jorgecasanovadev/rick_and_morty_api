import '../../../ui/modules/characters/model/character_model.dart';
import '../../network/characters_api.dart';
import '../../network/failure_handler.dart';
import '../abstract/character_repository.dart';

class CharacterRemoteRepository implements CharacterRepository {
  final charactersApi = CharactersApi();

  @override
  Future<List<CharacterModel>> getCharacters() async {
    try {
      final characters = await charactersApi.getCharacters();
      return characters;
    } on Failure {
      rethrow;
    }
  }
}
