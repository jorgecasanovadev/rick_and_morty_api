part of 'character_bloc.dart';

@freezed
class CharacterEvent with _$CharacterEvent {
  factory CharacterEvent.loading() = CharacterLoading;
  factory CharacterEvent.failed() = CharacterFailed;
  factory CharacterEvent.loaded() = CharacterLoaded;
}
