import 'package:flutter/material.dart';

import '../themes/themes.dart';

class ImageBackground extends StatelessWidget {
  const ImageBackground({super.key});

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.sizeOf(context);

    return SizedBox(
      child: Image.asset(
        'assets/images/r&m1_background.png',
        height: media.height,
        width: media.width,
        fit: BoxFit.cover,
        color: paletteDarkSkyblue.withOpacity(0.8),
        colorBlendMode: BlendMode.modulate,
      ),
    );
  }
}
