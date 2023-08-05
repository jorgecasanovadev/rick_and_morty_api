import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:choppi_test/src/ui/modules/characters/model/character_model.dart';
import 'package:choppi_test/src/ui/themes/themes.dart';
import 'package:choppi_test/src/ui/utils/input_formater.dart';
import 'package:flutter/material.dart';

@RoutePage()
class CharacterView extends StatelessWidget {
  const CharacterView({required this.character, super.key});
  final CharacterModel character;

  @override
  Widget build(BuildContext context) {
    final random = Random();
    final r = random.nextInt(2);
    var backgroundColor = paletteDarkSkyblue;
    var contentColor = paletteYellow;
    if (r == 1) {
      backgroundColor = paletteYellow;
      contentColor = paletteDarkSkyblue;
    }
    final media = MediaQuery.sizeOf(context);

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: Icon(
                          Icons.arrow_back_ios_new_outlined,
                          color: contentColor,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '${character.name}',
                        style: TypographyStyle.h4.paletteYellow.copyWith(
                          fontFamily: 'Schwifty',
                          color: contentColor,
                        ),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 15),
              CircleAvatar(
                backgroundImage: NetworkImage(
                  '${character.image}',
                ),
                radius: 140,
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 20,
                ),
                width: media.width,
                height: media.height * 0.35,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: (r == 0)
                        ? white.withOpacity(0.8)
                        : grey100.withOpacity(0.8),
                    width: 2,
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                  color: transparent,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 20,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Status
                      FittedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Status: ',
                              style: TypographyStyle
                                  .normal.w600.paletteYellow.s18
                                  .copyWith(color: contentColor),
                            ),
                            Text(
                              character.status!.capitalize(),
                              style: TypographyStyle.normal.w400.white.s16
                                  .copyWith(color: (r == 1) ? grey100 : null),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      // Species
                      FittedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Especie: ',
                              style: TypographyStyle
                                  .normal.w600.paletteYellow.s18
                                  .copyWith(color: contentColor),
                            ),
                            Text(
                              '${character.species}',
                              style: TypographyStyle.normal.w400.white.s16
                                  .copyWith(color: (r == 1) ? grey100 : null),
                            ),
                          ],
                        ),
                      ),
                      if (character.type != '') const SizedBox(height: 10),
                      // Type
                      if (character.type != '')
                        FittedBox(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Tipo: ',
                                style: TypographyStyle
                                    .normal.w600.paletteYellow.s18
                                    .copyWith(color: contentColor),
                              ),
                              Text(
                                '${character.type}',
                                style: TypographyStyle.normal.w400.white.s16
                                    .copyWith(color: (r == 1) ? grey100 : null),
                              ),
                            ],
                          ),
                        ),
                      const SizedBox(height: 10),
                      // Gender
                      FittedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Genero: ',
                              style: TypographyStyle
                                  .normal.w600.paletteYellow.s18
                                  .copyWith(color: contentColor),
                            ),
                            Text(
                              '${character.gender}',
                              style: TypographyStyle.normal.w400.white.s16
                                  .copyWith(color: (r == 1) ? grey100 : null),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      // Origin
                      FittedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Origen: ',
                              style: TypographyStyle
                                  .normal.w600.paletteYellow.s18
                                  .copyWith(color: contentColor),
                            ),
                            Text(
                              character.origin!.name!.capitalize(),
                              style: TypographyStyle.normal.w400.white.s16
                                  .copyWith(color: (r == 1) ? grey100 : null),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      // Location
                      FittedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Ubicación: ',
                                style: TypographyStyle
                                    .normal.w600.paletteYellow.s18
                                    .copyWith(color: contentColor),
                              ),
                            ),
                            Text(
                              '${character.location!.name}',
                              maxLines: 2,
                              softWrap: true,
                              overflow: TextOverflow.ellipsis,
                              style: TypographyStyle.normal.w400.white.s16
                                  .copyWith(color: (r == 1) ? grey100 : null),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
