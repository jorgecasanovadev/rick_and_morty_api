import 'package:flutter/material.dart';

import '../../../themes/themes.dart';

class MaterialContainerMenu extends StatelessWidget {
  const MaterialContainerMenu({
    required this.title,
    required this.image,
    required this.onTap,
    this.isMirror = false,
    this.isRounded = false,
    super.key,
  });
  final String title;
  final String image;
  final bool isMirror;
  final bool isRounded;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.sizeOf(context);

    return Material(
      elevation: 12,
      shadowColor: grey200.withOpacity(0.8),
      animationDuration: const Duration(milliseconds: 500),
      borderRadius: !isRounded
          ? !isMirror
              ? const BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                )
              : const BorderRadius.only(
                  topLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                )
          : const BorderRadius.all(
              Radius.circular(25),
            ),
      child: InkWell(
        splashColor: paletteGreen,
        borderRadius: !isRounded
            ? !isMirror
                ? const BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  )
                : const BorderRadius.only(
                    topLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                  )
            : const BorderRadius.all(
                Radius.circular(25),
              ),
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(12),
          height: 100,
          width: media.width * 0.8,
          decoration: BoxDecoration(
            color: paletteDarkSkyblue.withOpacity(0.8),
            borderRadius: !isRounded
                ? !isMirror
                    ? const BorderRadius.only(
                        bottomLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                      )
                    : const BorderRadius.only(
                        topLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25),
                      )
                : const BorderRadius.all(
                    Radius.circular(25),
                  ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(right: 8),
            child: !isMirror
                ? Row(
                    mainAxisAlignment: !isRounded
                        ? MainAxisAlignment.end
                        : MainAxisAlignment.center,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Image.asset(
                          image,
                          fit: BoxFit.cover,
                        ),
                      ),
                      if (!isRounded) const Spacer(),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Material(
                          elevation: 12,
                          color: transparent,
                          child: Text(
                            title,
                            style: TypographyStyle.h4.rmGreen.copyWith(
                              fontFamily: 'Schwifty',
                              fontSize: 35,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 5),
                      if (!isRounded)
                        Material(
                          elevation: 15,
                          color: transparent,
                          borderRadius: BorderRadius.circular(20),
                          child: const Icon(
                            Icons.arrow_right_outlined,
                            color: rmGreen,
                            size: 35,
                          ),
                        ),
                    ],
                  )
                : Row(
                    mainAxisAlignment: !isRounded
                        ? MainAxisAlignment.end
                        : MainAxisAlignment.center,
                    children: [
                      Material(
                        elevation: 12,
                        color: transparent,
                        borderRadius: BorderRadius.circular(20),
                        child: const Icon(
                          Icons.arrow_left_outlined,
                          color: rmGreen,
                          size: 35,
                        ),
                      ),
                      const SizedBox(width: 5),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Material(
                          elevation: 25,
                          color: transparent,
                          child: Text(
                            title,
                            style: TypographyStyle.h4.rmGreen.copyWith(
                              fontFamily: 'Schwifty',
                              fontSize: 35,
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
