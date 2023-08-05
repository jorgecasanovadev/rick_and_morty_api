import 'package:choppi_test/src/ui/modules/characters/model/character_model.dart';
import 'package:choppi_test/src/ui/themes/themes.dart';
import 'package:choppi_test/src/ui/utils/input_formater.dart';
import 'package:choppi_test/src/ui/widgets/custom_widgets/static_separator_line.dart';
import 'package:flutter/material.dart';

class CharacterCard extends StatelessWidget {
  const CharacterCard({
    required this.character,
    this.onTap,
    super.key,
  });

  final CharacterModel character;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.sizeOf(context);
    final status = character.status!.toLowerCase();
    var statusIcon = Icons.question_mark;
    var statusColor = black;
    switch (status) {
      case 'alive':
        statusIcon = Icons.tag_faces_outlined;
        statusColor = paletteGreen;
      case 'dead':
        statusIcon = Icons.face_retouching_off_outlined;
        statusColor = paletteRed;
      case 'unknown':
        statusIcon = Icons.question_mark_sharp;
        statusColor = paletteSand;

      default:
        break;
    }

    return InkWell(
      onTap: onTap,
      highlightColor: paletteSkyblue.withOpacity(0.8),
      splashColor: rmGreen,
      borderRadius: const BorderRadius.all(
        Radius.circular(16),
      ),
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        width: media.width,
        height: media.height * 0.252,
        decoration: BoxDecoration(
          border: Border.all(
            color: paletteDarkSkyblue.withOpacity(0.8),
            width: 2,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(16),
          ),
          color: white.withOpacity(0.3),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: media.width,
                  height: 42,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: paletteDarkSkyblue.withOpacity(0.8),
                      width: 2,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(14),
                      topRight: Radius.circular(14),
                    ),
                    color: paletteDarkSkyblue,
                  ),
                ),
                const Icon(
                  Icons.description_outlined,
                  size: 30,
                  color: rmYellow,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 20,
                  ),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                          '${character.image}',
                        ),
                        radius: 60,
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            FittedBox(
                              child: Text(
                                '${character.name}',
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.visible,
                                style: TypographyStyle.normal.paletteOrange.s24
                                    .copyWith(fontFamily: 'Schwifty'),
                              ),
                            ),
                            const SizedBox(height: 15),
                            FittedBox(
                              child: Text(
                                '${character.location!.name}',
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.visible,
                                style: TypographyStyle.normal.paletteBlue.s21
                                    .copyWith(fontFamily: 'Schwifty'),
                              ),
                            ),
                            const SizedBox(height: 10),
                            const StaticSeparatorLine(separatorCounter: 5),
                            const SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      character.status!.capitalize(),
                                      overflow: TextOverflow.visible,
                                      style: TypographyStyle.normal.black.s20,
                                    ),
                                    Icon(
                                      statusIcon,
                                      size: 30,
                                      color: statusColor,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
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
