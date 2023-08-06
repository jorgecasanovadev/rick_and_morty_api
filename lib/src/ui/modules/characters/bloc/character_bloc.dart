import 'dart:async';

import 'package:choppi_test/src/data/blocs/internet_connection/internet_connection_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_logs/flutter_logs.dart';

import '../../../../data/network/failure_handler.dart';
import '../../../../data/repositories/remote/character_remote.dart';
import '../../../utils/toast.dart';
import '../model/character_model.dart';

part 'character_event.dart';
part 'character_state.dart';

class CharacterBloc extends Bloc<CharacterEvent, CharacterState> {
  CharacterBloc({required this.internetConnectionBloc})
      : super(const CharacterState()) {
    on<CharacterEvent>((event, emit) {});

    on<OnToggleLoadingCharacterEvent>((event, emit) {
      if (state.isCharactersLoading != event.isCharactersLoading) {
        emit(state.copyWith(isCharactersLoading: event.isCharactersLoading));
      }
    });

    on<OnLoadCharacterEvent>((event, emit) {
      emit(
        state.copyWith(
          isCharactersLoading: false,
          hasErrorLoadingcharacters: false,
          characters: [...event.characters],
          listAllCharacters: [...event.characters],
        ),
      );
    });

    on<OnFilterCharacterEvent>(filterCharacters);

    on<OnErrorLoadingCharacterEvent>((event, emit) {
      emit(
        state.copyWith(
          hasErrorLoadingcharacters: true,
          isCharactersLoading: false,
        ),
      );
    });
  }

  final apiRemote = CharacterRemoteRepository();
  InternetConnectionBloc internetConnectionBloc;

  Future<void> filterCharacters(
    OnFilterCharacterEvent event,
    Emitter<CharacterState> emit,
  ) async {
    emit(
      state.copyWith(isCharactersLoading: true),
    );

    if (event.text.isEmpty) {
      emit(
        state.copyWith(
          isCharactersLoading: false,
          characters: state.listAllCharacters,
        ),
      );
      return;
    }

    await Future.delayed(const Duration(milliseconds: 1), () {
      final filteredProducers = state.listAllCharacters
          .where(
            (element) =>
                element.name!.toLowerCase().contains(event.text.toLowerCase()),
          )
          .toList();
      emit(
        state.copyWith(
          isCharactersLoading: false,
          characters: filteredProducers,
        ),
      );
    });
  }

  Future<void> loadCharacters() async {
    add(const OnToggleLoadingCharacterEvent(isCharactersLoading: true));
    final characters = <CharacterModel>[];
    try {
      if (internetConnectionBloc.state.isActive) {
        characters.addAll(await apiRemote.getCharacters());
        add(OnLoadCharacterEvent(characters: characters));
      } else {
        unawaited(
          ToastMessages.showError('No cuenta con conexión a internet'),
        );
      }
    } on Failure catch (e) {
      unawaited(
        FlutterLogs.logThis(
          tag: 'character_api',
          subTag: 'error',
          logMessage: e.toString(),
        ),
      );
      switch (e.statusCode) {
        case 408:
          unawaited(
            ToastMessages.showToast(
              'Problemas de conexión, tiempo de espera excedido',
            ),
          );
        case 401:
          unawaited(
            ToastMessages.showToast('No se encuentra autorizado para acceder.'),
          );
        default:
          add(const OnErrorLoadingCharacterEvent());
      }
    } catch (e) {
      unawaited(
        FlutterLogs.logThis(
          tag: 'character_api',
          subTag: 'error',
          logMessage: e.toString(),
          level: LogLevel.ERROR,
        ),
      );
      add(const OnErrorLoadingCharacterEvent());
      unawaited(
        ToastMessages.showToast('Error al cargar los personajes'),
      );
    } finally {
      add(const OnToggleLoadingCharacterEvent(isCharactersLoading: false));
    }
  }
}
