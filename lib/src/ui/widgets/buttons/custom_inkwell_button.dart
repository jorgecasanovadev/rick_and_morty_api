import 'package:flutter/material.dart';

import '../../themes/themes.dart';

class CustomInkwellButton extends StatelessWidget {
  const CustomInkwellButton({
    required this.title,
    required this.image,
    required this.onTap,
    this.isMirror = false,
    super.key,
  });
  final String title;
  final String image;
  final bool isMirror;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.sizeOf(context);
    // const backgroundColor = transparent;
    final backgroundColor = white.withOpacity(0.1);
    const splashColor = rmGreen;
    const borderColor = paletteDarkSkyblue;
    const textColor = rmGreen;
    // const textColor = paletteBlue;

    return Material(
      elevation: 12,
      shadowColor: white.withOpacity(0.1),
      color: backgroundColor,
      animationDuration: const Duration(milliseconds: 500),
      borderRadius: !isMirror
          ? const BorderRadius.only(
              bottomLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            )
          : const BorderRadius.only(
              topLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
            ),
      child: InkWell(
        highlightColor: borderColor.withOpacity(0.8),
        splashColor: splashColor,
        borderRadius: !isMirror
            ? const BorderRadius.only(
                bottomLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              )
            : const BorderRadius.only(
                topLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),
              ),
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(12),
          height: 100,
          width: media.width * 0.8,
          decoration: BoxDecoration(
            // color: paletteDarkSkyblue.withOpacity(0.8),
            color: backgroundColor,
            border: Border.all(
              color: borderColor.withOpacity(0.8),
              width: 3,
            ),
            borderRadius: !isMirror
                ? const BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  )
                : const BorderRadius.only(
                    topLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                  ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(right: 8),
            child: !isMirror
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Image.asset(
                          image,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const Spacer(),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Material(
                          elevation: 25,
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
                      Material(
                        elevation: 15,
                        color: transparent,
                        borderRadius: BorderRadius.circular(20),
                        child: const Icon(
                          Icons.arrow_right_outlined,
                          color: textColor,
                          size: 35,
                        ),
                      ),
                    ],
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Material(
                        elevation: 15,
                        color: transparent,
                        borderRadius: BorderRadius.circular(20),
                        child: const Icon(
                          Icons.arrow_left_outlined,
                          color: textColor,
                          size: 35,
                        ),
                      ),
                      const SizedBox(width: 5),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Material(
                          elevation: 25,
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
                      const Spacer(),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Image.asset(
                          image,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}
