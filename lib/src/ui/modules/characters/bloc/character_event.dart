part of 'character_bloc.dart';

abstract class CharacterEvent extends Equatable {
  const CharacterEvent();

  @override
  List<Object> get props => [];
}

class OnLoadCharacterEvent extends CharacterEvent {
  const OnLoadCharacterEvent({required this.characters});
  final List<CharacterModel> characters;
}

class OnErrorLoadingCharacterEvent extends CharacterEvent {
  const OnErrorLoadingCharacterEvent();
}

class OnFilterCharacterEvent extends CharacterEvent {
  const OnFilterCharacterEvent({required this.text});
  final String text;
}

class OnToggleLoadingCharacterEvent extends CharacterEvent {
  const OnToggleLoadingCharacterEvent({required this.isCharactersLoading});
  final bool isCharactersLoading;
}
