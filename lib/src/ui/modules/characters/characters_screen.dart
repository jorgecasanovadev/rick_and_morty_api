import 'package:auto_route/auto_route.dart';
import 'package:choppi_test/src/ui/themes/themes.dart';
import 'package:flutter/material.dart';

@RoutePage()
class CharactersScreen extends StatelessWidget {
  const CharactersScreen({super.key});
  // static const name = '/characters';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: green200,
        padding: const EdgeInsets.all(20),
        child: Text(
          'Characters Screen',
          style: TypographyStyle.h4,
        ),
      ),
    );
  }
}
