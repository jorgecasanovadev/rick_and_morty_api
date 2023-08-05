import 'package:auto_route/auto_route.dart';
import 'package:choppi_test/src/ui/themes/colors.dart';
import 'package:choppi_test/src/ui/widgets/buttons/custom_inkwell_button.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final route = AutoRouter.of(context);

    return Scaffold(
      backgroundColor: black100,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomInkwellButton(
              image: 'assets/images/r&m_angry.png',
              title: 'Personajes',
              onTap: () {
                route.pushNamed('/characters');
              },
            ),
            const SizedBox(height: 20),
            CustomInkwellButton(
              image: 'assets/images/r&m_portal.png',
              title: 'Episodios',
              onTap: () {
                route.pushNamed('/episodes');
              },
            ),
          ],
        ),
      ),
    );
  }
}

//  Image.asset(
//             'assets/images/r&m1_background.png',
//             height: media.height,
//             width: media.width,
//             fit: BoxFit.cover,
//             color: paletteDarkSkyblue.withOpacity(0.8),
//             colorBlendMode: BlendMode.modulate,
//           ),
