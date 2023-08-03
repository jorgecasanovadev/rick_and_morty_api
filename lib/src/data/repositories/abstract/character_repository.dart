import '../../../ui/modules/characters/model/character_model.dart';

// ignore: one_member_abstracts
abstract class CharacterRepository {
  Future<List<CharacterModel>> getCharacters();
}
