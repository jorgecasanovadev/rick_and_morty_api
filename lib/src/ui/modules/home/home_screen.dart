import 'package:auto_route/auto_route.dart';
import 'package:choppi_test/src/config/routes_import.gr.dart';
import 'package:choppi_test/src/ui/themes/themes.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryGreen,
      body: Center(
        child: Container(
          color: green200,
          padding: const EdgeInsets.all(20),
          child: ElevatedButton(
            onPressed: () => AutoRouter.of(context).push(
              const EpisodesScreenRoute(),
            ),
            child: Text(
              'Episodes Screen',
              style: TypographyStyle.h3.white,
            ),
          ),
        ),
      ),
    );
  }
}
