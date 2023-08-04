import 'package:auto_route/auto_route.dart';
import 'package:choppi_test/src/ui/modules/home/components/material_container_menu.dart';
import 'package:choppi_test/src/ui/themes/colors.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.sizeOf(context);
    final route = AutoRouter.of(context);

    return Scaffold(
      // backgroundColor: white,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            'assets/images/r&m1_background.png',
            height: media.height,
            width: media.width,
            fit: BoxFit.cover,
            color: paletteDarkSkyblue.withOpacity(0.8),
            colorBlendMode: BlendMode.modulate,
          ),
          const Spacer(),
          ListView(
            padding: EdgeInsetsDirectional.only(
              top: media.height * 0.6,
              start: 20,
              end: 20,
            ),
            children: [
              // const Spacer(),
              MaterialContainerMenu(
                image: 'assets/images/r&m_angry.png',
                title: 'Characters',
                onTap: () {},
              ),
              const SizedBox(height: 20),
              MaterialContainerMenu(
                image: 'assets/images/r&m_portal.png',
                title: 'Episodes',
                isMirror: true,
                onTap: () {},
              ),
              const SizedBox(height: 40),
              MaterialContainerMenu(
                image: 'assets/images/r&m_dancing.png',
                title: 'Locations',
                isRounded: true,
                onTap: () {},
              ),
              const SizedBox(height: 20),
            ],
          ),
        ],
      ),
    );
  }
}

 // Image.asset(
          //   'assets/images/r&m_logo.jpeg',
          //   width: media.width,
          //   height: media.height,
          //   fit: BoxFit.cover,
          //   color: white.withOpacity(0.9),
          //   colorBlendMode: BlendMode.modulate,
          // ),