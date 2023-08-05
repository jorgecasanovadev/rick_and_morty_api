part of 'character_bloc.dart';

class CharacterState extends Equatable {
  const CharacterState({
    this.listAllCharacters = const [],
    this.characters = const [],
    this.character,
    this.isCharactersLoading = true,
    this.hasErrorLoadingcharacters = false,
  }) : super();

  final bool isCharactersLoading;
  final bool hasErrorLoadingcharacters;
  final List<CharacterModel> characters;
  final List<CharacterModel> listAllCharacters;
  final CharacterModel? character;

  CharacterState copyWith({
    List<CharacterModel>? characters,
    List<CharacterModel>? listAllCharacters,
    CharacterModel? character,
    bool? isCharactersLoading,
    bool? hasErrorLoadingcharacters,
  }) {
    return CharacterState(
      characters: characters ?? this.characters,
      listAllCharacters: listAllCharacters ?? this.listAllCharacters,
      character: character ?? this.character,
      isCharactersLoading: isCharactersLoading ?? this.isCharactersLoading,
      hasErrorLoadingcharacters:
          hasErrorLoadingcharacters ?? this.hasErrorLoadingcharacters,
    );
  }

  @override
  List<Object?> get props => [
        listAllCharacters,
        characters,
        character,
        isCharactersLoading,
        hasErrorLoadingcharacters,
      ];
}
