import 'package:flutter/material.dart';

import '../../themes/themes.dart';

class CircularInkwellButton extends StatelessWidget {
  const CircularInkwellButton({
    required this.title,
    required this.image,
    required this.onTap,
    super.key,
  });
  final String title;
  final String image;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.sizeOf(context);
    // const backgroundColor = transparent;
    final backgroundColor = white.withOpacity(0.5);
    const splashColor = paletteDarkSkyblue;
    const borderColor = rmGreen;
    // const textColor = white;
    const textColor = paletteBlue;

    return Material(
      elevation: 12,
      shadowColor: grey200.withOpacity(0.8),
      color: backgroundColor,
      animationDuration: const Duration(milliseconds: 500),
      borderRadius: const BorderRadius.all(
        Radius.circular(25),
      ),
      child: InkWell(
        splashColor: splashColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(25),
        ),
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(12),
          height: 100,
          width: media.width * 0.8,
          decoration: BoxDecoration(
            // color: paletteDarkSkyblue.withOpacity(0.9),
            color: backgroundColor,
            border: Border.all(
              color: borderColor.withOpacity(0.8),
              width: 3,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(25),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 20),
                Align(
                  alignment: Alignment.centerRight,
                  child: Material(
                    elevation: 20,
                    color: transparent,
                    shadowColor: textColor.withOpacity(0.4),
                    child: Text(
                      title,
                      style: TypographyStyle.h4.copyWith(
                        fontFamily: 'Schwifty',
                        fontSize: 35,
                        color: textColor,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 5),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
