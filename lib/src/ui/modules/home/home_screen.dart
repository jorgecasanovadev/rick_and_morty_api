import 'package:auto_route/auto_route.dart';
import 'package:choppi_test/src/ui/themes/themes.dart';
import 'package:choppi_test/src/ui/widgets/buttons/custom_inkwell_button.dart';
import 'package:choppi_test/src/ui/widgets/custom_widgets/title_logo.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.sizeOf(context);
    final route = AutoRouter.of(context);

    return Scaffold(
      backgroundColor: grey200.withOpacity(0.4),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Image.asset(
              'assets/images/rick.png',
              height: media.height,
              width: media.width,
              fit: BoxFit.cover,
              color: paletteDarkSkyblue.withOpacity(0.8),
              colorBlendMode: BlendMode.modulate,
            ),
            Column(
              children: [
                Container(
                  height: media.width,
                  decoration: BoxDecoration(
                    color: bluegrey.withOpacity(0.5),
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25),
                    ),
                  ),
                  child: Stack(
                    children: [
                      const SafeArea(
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                            padding: EdgeInsets.all(20),
                            child: TitleLogo(),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Text(
                            'Personajes, episodios\n y mucho más...',
                            textAlign: TextAlign.end,
                            maxLines: 3,
                            softWrap: true,
                            overflow: TextOverflow.visible,
                            style: TypographyStyle.btBold.white.s28,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
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
                        isMirror: true,
                        onTap: () {
                          route.pushNamed('/episodes');
                        },
                      ),
                      const SizedBox(height: 40),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
