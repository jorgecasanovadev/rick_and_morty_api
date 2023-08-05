import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:choppi_test/src/ui/modules/episodes/bloc/episode_bloc.dart';
import 'package:choppi_test/src/ui/modules/episodes/views/episode_card.dart';
import 'package:choppi_test/src/ui/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_logs/flutter_logs.dart';

@RoutePage()
class EpisodesScreen extends StatefulWidget {
  const EpisodesScreen({super.key});

  @override
  State<EpisodesScreen> createState() => _EpisodesScreenState();
}

class _EpisodesScreenState extends State<EpisodesScreen> {
  // Blocs
  late EpisodeBloc _episodeBloc;

  // Hardcore Data
  List<String> episodesImgs = [
    'assets/images/episode1.png',
    'assets/images/episode2.png',
    'assets/images/episode3.png',
    'assets/images/episode4.png',
    'assets/images/episode5.png',
    'assets/images/episode6.png',
    'assets/images/episode7.png',
    'assets/images/episode8.png',
    'assets/images/episode9.png',
    'assets/images/episode10.png',
    'assets/images/episode2.png',
    'assets/images/episode7.png',
    'assets/images/episode3.png',
    'assets/images/episode9.png',
    'assets/images/episode1.png',
    'assets/images/episode8.png',
    'assets/images/episode6.png',
    'assets/images/episode4.png',
    'assets/images/episode10.png',
    'assets/images/episode5.png',
  ];

  Future<void> _pullRefresh() async {
    unawaited(FlutterLogs.exportLogs());
    await _episodeBloc.loadEpisodes();
  }

  @override
  void initState() {
    _episodeBloc = BlocProvider.of<EpisodeBloc>(context);
    _episodeBloc.loadEpisodes();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // final route = AutoRouter.of(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: rmGreen.withOpacity(0.7),
        foregroundColor: paletteSand,
        title: Text(
          'Episodios',
          style: TypographyStyle.h4.paletteSand.copyWith(
            fontFamily: 'Schwifty',
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Flexible(
            child: BlocBuilder<EpisodeBloc, EpisodeState>(
              builder: (context, state) {
                if (state.isEpisodesLoading) {
                  return const Center(
                    child: CircularProgressIndicator(
                      color: rmGreen,
                    ),
                  );
                }

                if (state.hasErrorLoadingEpisodes) {
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15),
                          child: Text(
                            'Problemas al cargar a los episodios',
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
                if (state.episodes.isEmpty) {
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15),
                          child: Text(
                            'No se encontraron episodios',
                            textAlign: TextAlign.center,
                            style: TypographyStyle.st3.bold,
                          ),
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
                    itemCount: state.episodes.length,
                    itemBuilder: (context, index) {
                      final episode = state.episodes[index];
                      final episodeImage = episodesImgs[index];
                      return EpisodeCard(
                        episode: episode,
                        episodeImg: episodeImage,
                        onTap: () {},
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
