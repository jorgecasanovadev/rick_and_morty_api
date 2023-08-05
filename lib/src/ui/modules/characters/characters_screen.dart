import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:choppi_test/src/ui/modules/characters/views/character_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_logs/flutter_logs.dart';

import '../../../config/routes_import.gr.dart';
import '../../themes/themes.dart';
import '../../widgets/custom_form_fields/custom_text_field.dart';
import 'bloc/character_bloc.dart';

@RoutePage()
class CharactersScreen extends StatefulWidget {
  const CharactersScreen({super.key});

  @override
  State<CharactersScreen> createState() => _CharactersScreenState();
}

class _CharactersScreenState extends State<CharactersScreen> {
  // Blocs
  late CharacterBloc _characterBloc;

  // Controllers
  TextEditingController? _textSerchCharactController;

  Future<void> _pullRefresh() async {
    unawaited(FlutterLogs.exportLogs());
    await _characterBloc.loadCharacters();
  }

  @override
  void initState() {
    _characterBloc = BlocProvider.of<CharacterBloc>(context);
    _characterBloc.loadCharacters();

    _textSerchCharactController = TextEditingController()
      ..addListener(() {
        _characterBloc.add(
          OnFilterCharacterEvent(
            text: _textSerchCharactController?.text ?? '',
          ),
        );
      });

    super.initState();
  }

  @override
  void dispose() {
    _textSerchCharactController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final route = AutoRouter.of(context);

    return Scaffold(
      appBar: AppBar(
        foregroundColor: paletteSand,
        backgroundColor: rmGreen.withOpacity(0.7),
        title: Text(
          'Personajes',
          style: TypographyStyle.h4.paletteSand.copyWith(
            fontFamily: 'Schwifty',
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: CustomTextField(
              title: 'Buscador',
              controller: _textSerchCharactController,
            ),
          ),
          Flexible(
            child: BlocBuilder<CharacterBloc, CharacterState>(
              builder: (context, state) {
                if (state.isCharactersLoading) {
                  return const Center(
                    child: CircularProgressIndicator(
                      color: rmGreen,
                    ),
                  );
                }

                if (state.hasErrorLoadingcharacters) {
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15),
                          child: Text(
                            'Problemas al cargar a los personajes',
                            textAlign: TextAlign.center,
                            style: TypographyStyle.st3.bold,
                          ),
                        ),
                        IconButton(
                          iconSize: 35,
                          icon: const Icon(
                            Icons.refresh,
                          ),
                          onPressed: _pullRefresh,
                        ),
                      ],
                    ),
                  );
                }
                if (state.characters.isEmpty) {
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15),
                          child: Text(
                            'No se encontraron personajes',
                            textAlign: TextAlign.center,
                            style: TypographyStyle.st3.bold,
                          ),
                        ),
                        if (_textSerchCharactController?.text == null ||
                            _textSerchCharactController?.text == '')
                          IconButton(
                            iconSize: 35,
                            icon: const Icon(
                              Icons.refresh,
                              color: rmGreen,
                            ),
                            onPressed: _pullRefresh,
                          ),
                      ],
                    ),
                  );
                }
                return RefreshIndicator(
                  onRefresh: _pullRefresh,
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(
                      parent: AlwaysScrollableScrollPhysics(),
                    ),
                    shrinkWrap: true,
                    itemCount: state.characters.length,
                    itemBuilder: (context, index) {
                      final character = state.characters[index];
                      return CharacterCard(
                        character: character,
                        onTap: () => route.push(
                          CharacterViewRoute(character: character),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
