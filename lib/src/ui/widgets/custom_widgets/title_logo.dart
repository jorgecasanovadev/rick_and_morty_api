import 'package:choppi_test/src/ui/widgets/custom_widgets/arc_text.dart';
import 'package:flutter/material.dart';

import '../../themes/themes.dart';

class TitleLogo extends StatelessWidget {
  const TitleLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 220),
          width: 50,
          child: Stack(
            alignment: Alignment.center,
            children: [
              ArcText(
                radius: 180,
                text: 'Rick and Morty',
                textStyle: TypographyStyle.h3.w700.rmGreen
                    .copyWith(fontFamily: 'Schwifty'),
                startAngle: -3.14 / 4.6,
              ),
              ArcText(
                radius: 180,
                text: 'Rick and Morty',
                textStyle: TypographyStyle.h3.w700.paletteDarkSkyblue
                    .copyWith(fontFamily: 'Schwifty', fontSize: 38),
                startAngle: -3.14 / 4.8,
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 180),
          width: 50,
          child: Stack(
            alignment: Alignment.center,
            children: [
              ArcText(
                radius: 100,
                text: 'TV Show',
                textStyle: TypographyStyle.h4.w700.paletteYellow
                    .copyWith(fontFamily: 'Schwifty'),
                startAngle: -3.14 / 6,
              ),
              ArcText(
                radius: 100,
                text: 'TV Show',
                textStyle: TypographyStyle.h4.w700.paletteOrange
                    .copyWith(fontFamily: 'Schwifty', fontSize: 28),
                startAngle: -3.14 / 6.5,
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 100),
          width: 50,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Text(
                'API',
                style: TypographyStyle.h4.w700.paletteRed
                    .copyWith(fontFamily: 'Schwifty'),
              ),
              Text(
                'API',
                style: TypographyStyle.h4.w700.rmPale
                    .copyWith(fontFamily: 'Schwifty', fontSize: 28),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
