import 'package:flutter/material.dart';

import '../themes/themes.dart';

class TitleLogo extends StatelessWidget {
  const TitleLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Center(
              child: Text(
                'Rick and Morty',
                style: TypographyStyle.h3.w700.rmGreen
                    .copyWith(fontFamily: 'Schwifty'),
              ),
            ),
            Center(
              child: Text(
                'Rick and Morty',
                style: TypographyStyle.h3.w700.paletteDarkSkyblue
                    .copyWith(fontFamily: 'Schwifty', fontSize: 39),
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        // Stack(
        //   children: [
        //     Text(
        //       'TV Show',
        //       style: TypographyStyle.h4.w700.paletteGreen
        //           .copyWith(fontFamily: 'Schwifty'),
        //     ),
        //     Text(
        //       'TV Show',
        //       style: TypographyStyle.h4.w700.green300
        //           .copyWith(fontFamily: 'Schwifty', fontSize: 28),
        //     ),
        //   ],
        // ),
      ],
    );
  }
}
