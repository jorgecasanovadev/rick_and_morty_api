import 'package:auto_route/auto_route.dart';
import 'package:choppi_test/src/config/routes_import.gr.dart';
import 'package:choppi_test/src/data/network/episodes_api.dart';
import 'package:choppi_test/src/ui/themes/themes.dart';
import 'package:flutter/material.dart';

@RoutePage()
class EpisodesScreen extends StatelessWidget {
  const EpisodesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final api = EpisodesApi();
    return Scaffold(
      backgroundColor: blue500,
      body: Center(
        child: Container(
          color: green200,
          padding: const EdgeInsets.all(20),
          child: ElevatedButton(
            onPressed: () => AutoRouter.of(context).push(
              const CharactersScreenRoute(),
            ),
            child: Column(
              children: [
                Text(
                  'To Characters Screen',
                  style: TypographyStyle.h3.white,
                ),
                IconButton(
                  onPressed: api.charactersList,
                  icon: const Icon(
                    Icons.data_object,
                    size: 50,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
