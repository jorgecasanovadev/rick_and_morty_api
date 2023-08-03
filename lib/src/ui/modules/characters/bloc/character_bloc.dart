import 'package:bloc/bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/repositories/remote/character_remote.dart';
import '../model/character_model.dart';

part 'character_bloc.freezed.dart';
part 'character_event.dart';
part 'character_state.dart';

class CharacterBloc extends Bloc<CharacterEvent, CharacterState> {
  CharacterBloc() : super(CharacterState) {
    final characterApi = CharacterRemoteRepository();

    on<CharacterLoading>((event, emit) async {
      emit(CharacterState.loading());
      // ignore: inference_failure_on_instance_creation
      await Future.delayed(const Duration(milliseconds: 800));
    });
    on<CharacterFailed>(
      (event, emit) => emit(CharacterState.failed()),
    );
    on<CharacterLoaded>(
      (event, emit) async {
        if (state is CharacterLoaded) {
          emit(CharacterLoading);
          final characters = await characterApi.getCharacters();
          emit(CharacterState.loaded(characters: characters));
        }
      },
    );
  }
}
