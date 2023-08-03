import 'package:auto_route/auto_route.dart';
import 'package:choppi_test/src/ui/themes/themes.dart';
import 'package:flutter/material.dart';

@RoutePage()
class CharacterView extends StatelessWidget {
  const CharacterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: yellow100,
        padding: const EdgeInsets.all(20),
        child: Text(
          'Character View',
          style: TypographyStyle.h4,
        ),
      ),
    );
  }
}
