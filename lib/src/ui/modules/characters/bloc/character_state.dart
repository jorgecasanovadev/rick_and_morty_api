part of 'character_bloc.dart';

@freezed
class CharacterState with _$CharacterState {
  factory CharacterState.loading() = CharacterStateLoading;
  factory CharacterState.failed() = CharacterStateFailed;
  factory CharacterState.loaded({
    required List<CharacterModel> characters,
  }) = CharacterStateLoaded;
}
