import 'package:flutter/material.dart';

import 'colors.dart';

const String font = 'Avenir';

TextStyle textStyle = const TextStyle(
  fontFamily: font,
  letterSpacing: 0,
);

extension BetterStyle on TextStyle {
  TextStyle get black => copyWith(color: AppColors.black);
  TextStyle get black50 => copyWith(color: AppColors.black50);
  TextStyle get black100 => copyWith(color: AppColors.black100);
  TextStyle get black38 => copyWith(color: AppColors.black38);
  TextStyle get black54 => copyWith(color: AppColors.black54);
  TextStyle get blue500 => copyWith(color: AppColors.blue500);
  TextStyle get yellow100 => copyWith(color: AppColors.yellow100);
  TextStyle get orange50 => copyWith(color: AppColors.orange50);
  TextStyle get orange100 => copyWith(color: AppColors.orange100);
  TextStyle get orange200 => copyWith(color: AppColors.orange200);
  TextStyle get orange300 => copyWith(color: AppColors.orange300);
  TextStyle get red50 => copyWith(color: AppColors.red50);
  TextStyle get red100 => copyWith(color: AppColors.red100);
  TextStyle get red200 => copyWith(color: AppColors.red200);
  TextStyle get red300 => copyWith(color: AppColors.red300);
  TextStyle get red => copyWith(color: AppColors.red);
  TextStyle get white => copyWith(color: AppColors.white);
  TextStyle get whiteBone => copyWith(color: AppColors.whiteBone);
  TextStyle get green700 => copyWith(color: AppColors.green700);
  TextStyle get green100 => copyWith(color: AppColors.green100);
  TextStyle get green200 => copyWith(color: AppColors.green200);
  TextStyle get green300 => copyWith(color: AppColors.green300);
  TextStyle get green400 => copyWith(color: AppColors.green400);
  TextStyle get green500 => copyWith(color: AppColors.green500);
  TextStyle get green600 => copyWith(color: AppColors.green600);
  TextStyle get green800 => copyWith(color: AppColors.green800);
  TextStyle get green900 => copyWith(color: AppColors.green900);
  TextStyle get darkGreen50 => copyWith(color: AppColors.darkGreen50);
  TextStyle get darkGreen100 => copyWith(color: AppColors.darkGreen100);
  TextStyle get grey700 => copyWith(color: AppColors.grey700);
  TextStyle get grey350 => copyWith(color: AppColors.grey350);
  TextStyle get grey => copyWith(color: AppColors.grey);
  TextStyle get greyPrimary => copyWith(color: AppColors.greyPrimary);
  TextStyle get grey50 => copyWith(color: AppColors.grey50);
  TextStyle get grey70 => copyWith(color: AppColors.grey70);
  TextStyle get grey100 => copyWith(color: AppColors.grey100);
  TextStyle get grey200 => copyWith(color: AppColors.grey200);
  TextStyle get grey300 => copyWith(color: AppColors.grey300);
  TextStyle get grey400 => copyWith(color: AppColors.grey400);
  TextStyle get grey500 => copyWith(color: AppColors.grey500);
  TextStyle get grey600 => copyWith(color: AppColors.grey600);
  TextStyle get darkBlueGrey => copyWith(
        color: const Color.fromARGB(255, 20, 96, 134),
      );
  TextStyle get bluegrey => copyWith(color: Colors.blueGrey);
  TextStyle get bluegrey150 => copyWith(color: Colors.blueGrey.withAlpha(150));

  //TextStyle R&M Colors
  //Rick and Morty Colors
  TextStyle get rmBrown => copyWith(color: const Color(0xff44281D));
  TextStyle get rmPale => copyWith(color: const Color(0xffE4A788));
  TextStyle get rmYellow => copyWith(color: const Color(0xfff0E14A));
  TextStyle get rmGreen => copyWith(color: const Color(0xff97CE4C));
  TextStyle get rmPink => copyWith(color: const Color(0xffE89AC7));

//Rick and Morty Colors Pallette
  TextStyle get paletteYellow => copyWith(color: const Color(0xffFAFD7C));
  TextStyle get paletteBrown => copyWith(color: const Color(0xff82491E));
  TextStyle get paletteBlue => copyWith(color: const Color(0xff24325F));
  TextStyle get paletteSkyblue => copyWith(color: const Color(0xffB7E4F9));
  TextStyle get paletteRed => copyWith(color: const Color(0xffFB6467));
  TextStyle get paletteGreen => copyWith(color: const Color(0xff526E2D));
  TextStyle get palettePink => copyWith(color: const Color(0xffE762D7));
  TextStyle get paletteOrange => copyWith(color: const Color(0xffE89242));
  TextStyle get paletteLightYellow => copyWith(color: const Color(0xffFAE48B));
  TextStyle get paletteSky => copyWith(color: const Color(0xffA6EEE6));
  TextStyle get paletteSand => copyWith(color: const Color(0xff917C5D));
  TextStyle get paletteDarkSkyblue => copyWith(color: const Color(0xff69C8EC));

  TextStyle get w100 => copyWith(fontWeight: FontWeight.w100);
  TextStyle get w200 => copyWith(fontWeight: FontWeight.w200);
  TextStyle get w300 => copyWith(fontWeight: FontWeight.w300);
  TextStyle get w400 => copyWith(fontWeight: FontWeight.w400);
  TextStyle get w500 => copyWith(fontWeight: FontWeight.w500);
  TextStyle get w600 => copyWith(fontWeight: FontWeight.w600);
  TextStyle get w700 => copyWith(fontWeight: FontWeight.w700);
  TextStyle get w800 => copyWith(fontWeight: FontWeight.w800);
  TextStyle get w900 => copyWith(fontWeight: FontWeight.w900);
  TextStyle get bold => copyWith(fontWeight: FontWeight.bold);

  TextStyle get s8 => copyWith(fontSize: 8);
  TextStyle get s10 => copyWith(fontSize: 10);
  TextStyle get s12 => copyWith(fontSize: 12);
  TextStyle get s13 => copyWith(fontSize: 13);
  TextStyle get s14 => copyWith(fontSize: 14);
  TextStyle get s15 => copyWith(fontSize: 15);
  TextStyle get s16 => copyWith(fontSize: 16);
  TextStyle get s18 => copyWith(fontSize: 18);
  TextStyle get s19 => copyWith(fontSize: 19);
  TextStyle get s20 => copyWith(fontSize: 20);
  TextStyle get s21 => copyWith(fontSize: 21);
  TextStyle get s22 => copyWith(fontSize: 22);
  TextStyle get s24 => copyWith(fontSize: 24);
  TextStyle get s26 => copyWith(fontSize: 26);
  TextStyle get s28 => copyWith(fontSize: 28);
  TextStyle get s30 => copyWith(fontSize: 30);
  TextStyle get s32 => copyWith(fontSize: 32);
  TextStyle get s34 => copyWith(fontSize: 34);
  TextStyle get s36 => copyWith(fontSize: 36);
  TextStyle get s38 => copyWith(fontSize: 38);
  TextStyle get s40 => copyWith(fontSize: 40);
  TextStyle get s42 => copyWith(fontSize: 42);
  TextStyle get s60 => copyWith(fontSize: 60);
  TextStyle get s96 => copyWith(fontSize: 96);
}

abstract class TypographyStyle {
  TypographyStyle._();
  static TextStyle h1 = textStyle.copyWith(
    fontSize: 96,
    fontWeight: FontWeight.w900,
  );
  static TextStyle normal = textStyle;
  static TextStyle h2 = textStyle.copyWith(
    fontSize: 60,
    fontWeight: FontWeight.w900,
  );
  static TextStyle h25 = textStyle.copyWith(
    fontSize: 50,
    fontWeight: FontWeight.w900,
  );
  static TextStyle h3 = textStyle.copyWith(
    fontSize: 40,
    fontWeight: FontWeight.w900,
  );
  static TextStyle h4 = textStyle.copyWith(
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );
  static TextStyle h5 = textStyle.copyWith(
    fontSize: 24,
    fontWeight: FontWeight.w900,
  );
  static TextStyle h6 = textStyle.copyWith(
    fontSize: 20,
    fontWeight: FontWeight.w500,
  );
  static TextStyle h7 = textStyle.copyWith(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );
  static TextStyle h8 = textStyle.copyWith(
    fontSize: 28,
    fontWeight: FontWeight.w700,
  );
  static TextStyle h9 = textStyle.copyWith(
    fontSize: 22,
    fontWeight: FontWeight.bold,
  );
  static TextStyle st1 = textStyle.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );
  static TextStyle st165 = textStyle.copyWith(
    fontSize: 16.5,
    fontWeight: FontWeight.w700,
  );
  static TextStyle st2 = textStyle.copyWith(
    fontSize: 14,
    fontWeight: FontWeight.w700,
  );
  static TextStyle st3 = textStyle.copyWith(
    fontSize: 15,
    fontWeight: FontWeight.w700,
  );
  static TextStyle st4 = textStyle.copyWith(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );
  static TextStyle b1 = textStyle.copyWith(
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );
  static TextStyle b3 = textStyle.copyWith(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );
  static TextStyle b2 = textStyle.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
  static TextStyle bt = textStyle.copyWith(
    fontWeight: FontWeight.w400,
  );
  static TextStyle btBold = textStyle.copyWith(
    fontWeight: FontWeight.bold,
  );
  static TextStyle b2Space16 = textStyle.copyWith(
    fontWeight: FontWeight.w500,
    letterSpacing: 0.16,
  );
  static TextStyle caption = textStyle.copyWith(
    fontSize: 10,
    fontWeight: FontWeight.w500,
  );
  static TextStyle overline = textStyle.copyWith(
    fontSize: 12,
    fontWeight: FontWeight.bold,
  );
  static TextStyle overline1 = textStyle.copyWith(
    fontSize: 13,
  );
}
