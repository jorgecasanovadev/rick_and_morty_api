import 'package:flutter/material.dart';

@Deprecated('Use Colors class instead.')
class AColors {
  static final text = TextColorPalette(
    main: const Color(0XFFF2F2F2),
    secondary: const Color(0XFFE0E0E0),
  );

  static const callToAction = Color(0xffE91E63);
  static const confirmation = Color(0xff4CAF50);
  static const incorrect = Color(0xffFF3B30);
  static const background = Color(0xff081A2B);
  static const accentColor = Color(0xff00B3E1);
  static const backgroundOnboarding = Color.fromRGBO(0, 0, 0, 0.7);
  // region gradient-colors
  static const purple = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xffF23E7B),
      Color(0xffD81F5E),
      Color(0xffB7023F),
    ],
  );

  final Shader callToActionGradient = const LinearGradient(
    colors: <Color>[
      Color(0xffEA0C43),
      Color(0xffC821B2),
    ],
  ).createShader(
    Rect.largest,
    // Rect.fromLTWH(0.0, 0.0, 200.0, 70.0),
  );

  static const backgrounDark = BoxDecoration(
    boxShadow: [
      BoxShadow(
        color: Color.fromRGBO(232, 237, 243, 0.05),
        offset: Offset(12, 20),
        blurRadius: 56,
      ),
      BoxShadow(
        color: Color.fromRGBO(2, 3, 3, 0.05),
        offset: Offset(36, 12),
        blurRadius: 64,
      ),
      BoxShadow(
        color: Color.fromRGBO(248, 249, 249, 0.05),
        offset: Offset(-16, -6),
        blurRadius: 80,
        spreadRadius: -80,
      ),
    ],
    borderRadius: BorderRadius.all(Radius.circular(24)),
    gradient: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      stops: [-0.3, .84],
      colors: [
        Color.fromRGBO(53, 58, 64, .95),
        Color.fromRGBO(18, 20, 22, .95),
      ],
    ),
  );
  static const profileBackground = BoxDecoration(
    gradient: LinearGradient(
      colors: [
        Color.fromRGBO(53, 58, 64, 0.95),
        Color.fromRGBO(18, 20, 22, 0.95),
      ],
      begin: FractionalOffset(0, 0),
      end: FractionalOffset(1, 0),
      stops: [0.0, 1.0],
      tileMode: TileMode.mirror,
    ),
  );
  static final concaveButton = BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topRight,
      end: const Alignment(1, 4),
      colors: [
        Colors.black.withOpacity(.3),
        const Color(0xff32383E).withOpacity(.6),
        const Color(0xff32383E).withOpacity(.1),
      ],
    ),
    borderRadius: const BorderRadius.all(Radius.circular(100)),
    boxShadow: const [
      BoxShadow(
        color: Color.fromRGBO(53, 58, 64, .1),
        offset: Offset(-12, -20),
        blurRadius: 56,
      ),
      BoxShadow(
        color: Color.fromRGBO(18, 20, 22, .60),
        offset: Offset(36, 12),
        blurRadius: 64,
      ),
      BoxShadow(
        color: Color.fromRGBO(18, 20, 22, .70),
        offset: Offset(-16, -6),
        blurRadius: 80,
      ),
    ],
  );

  static final backgroundMicroButtonNotListen = BoxDecoration(
    borderRadius: const BorderRadius.all(Radius.circular(100)),
    gradient: LinearGradient(
      begin: Alignment.topRight,
      end: const Alignment(1, 4),
      colors: [
        const Color(0xff005EA3).withOpacity(1),
        const Color(0xff11A8FD).withOpacity(1),
      ],
      stops: const [.14, .84],
    ),
  );

  static final backgroundMicroButtonListen = BoxDecoration(
    borderRadius: const BorderRadius.all(Radius.circular(100)),
    gradient: LinearGradient(
      begin: Alignment.topRight,
      end: const Alignment(1, 4),
      colors: [
        const Color(0xffF23E7B).withOpacity(.20),
        const Color(0xffD81F5E).withOpacity(.36),
        const Color(0xffB7023F).withOpacity(.54),
      ],
    ),
  );
  // endregion

  static BoxDecoration backgroundColors = const BoxDecoration(
    gradient: LinearGradient(
      colors: [Color(0xFF353A40), Color(0xFF121416)],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
  );
  static TextStyle hastagStyle = const TextStyle(
    color: Colors.grey,
    shadows: [
      BoxShadow(
        offset: Offset(0.5, .5),
      )
    ],
  );
  static InputDecoration dragInputDecoration(String text) => InputDecoration(
        border: InputBorder.none,
        labelText: text,
        labelStyle: const TextStyle(
          color: Colors.grey,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
      );
}

class TextColorPalette {
  TextColorPalette({
    required this.main,
    required this.secondary,
  });
  final Color main;
  final Color secondary;
}

// !Configuration Colors

const Color callToAction = Color(0xffE91E63);
const Color confirmation = Color(0xff4CAF50);
const Color incorrect = Color(0xffFF3B30);
const Color background = Color(0xff081A2B);
const Color bgGreen = Color(0xffEFF3F4);
const Color accentColor = Color(0xff00B3E1);
const Color backgroundOnboarding = Color.fromRGBO(0, 0, 0, 0.7);
const Color mainColor = Color(0XFFF2F2F2);
const Color mainSecondary = Color(0XFFE0E0E0);
const Color gray50 = Color.fromRGBO(158, 158, 158, 1);
const Color black50 = Color(0xff191919);
const Color black100 = Color(0xFF0F1419);
const Color black38 = Colors.black38;
const Color black = Colors.black;
const Color blue500 = Color(0xff3600ff);
const Color blueFacebook = Color.fromRGBO(66, 103, 178, 0.0);
const Color yellow100 = Color(0xffFEED00);
const Color purple100 = Color(0xff8F00FF);

const Color orange50 = Color(0xffEB7923);
const Color orange100 = Color(0xffE0726A);
const Color orange200 = Color(0xffE4733A);
const Color orange300 = Color(0xffFF7910);

const Color red50 = Color(0xffD84D44);
const Color red100 = Color(0xffBE3127);
const Color red200 = Color(0xffE40203);
const Color red300 = Color(0xffFE5157);

const Color red = Colors.red;
Color red400 = Colors.red[400]!;
Color redAccent = Colors.redAccent;

const Color white = Colors.white;
const Color transparent = Colors.transparent;

Color green700 = Colors.green[700]!;

const Color primaryGreen = Color(0xff00822B);
const Color green100 = Color(0xffDBF4EF);
const Color green200 = Color(0xffB3EBBA);
const Color green300 = Color(0xffABF06C);
const Color green400 = Color(0xff81C784);
const Color green500 = Color(0xff2A945F);
const Color green600 = Color(0xff3f860c);
const Color green800 = Color(0xff0ae331);
const Color green900 = Color(0xff40e57c);

const Color darkGreen50 = Color(0xff007E2D);
const Color darkGreen100 = Color(0xff008044);
const Color darkBlueGrey = Color.fromARGB(255, 20, 96, 134);

Color grey500 = Colors.grey[500]!;
Color grey350 = Colors.grey[350]!;

Color bluegrey = Colors.blueGrey;
Color bluegrey150 = Colors.blueGrey.withAlpha(150);
Color bluegrey180 = Colors.blueGrey.withAlpha(180);
Color bluegrey400 = Colors.blueGrey[400]!;
Color bluegrey500 = Colors.blueGrey[500]!;
Color bluegrey600 = Colors.blueGrey[600]!;
Color bluegrey700 = Colors.blueGrey[700]!;

const Color greyPrimary = Colors.grey;
const Color grey = Color(0xffF0EEEE);
const Color greyColors = Color(0xff9E9E9E);
const Color grey50 = Color(0xffCFD9DE);
const Color grey70 = Color(0xffCFD2D8);
const Color grey100 = Color(0xff6E767D);
const Color grey200 = Color(0xff536471);
const Color grey300 = Color(0xff8f9287);
const Color grey400 = Color.fromARGB(255, 81, 77, 77);
const Color grey600 = Color(0xff4F4F4F);
const Color grey700 = Color(0xffBDBDBD);

class AppColors {
  static const Color callToAction = Color(0xffE91E63);
  static const Color confirmation = Color(0xff4CAF50);
  static const Color incorrect = Color(0xffFF3B30);
  static const Color background = Color(0xff081A2B);
  static const Color accentColor = Color(0xff00B3E1);
  static const Color backgroundOnboarding = Color.fromRGBO(0, 0, 0, 0.7);
  static const Color mainColor = Color(0XFFF2F2F2);
  static const Color mainSecondary = Color(0XFFE0E0E0);
  static const Color gray50 = Color.fromRGBO(158, 158, 158, 1);
  static const Color black50 = Color(0xff191919);
  static const Color black = Colors.black;
  static const Color black100 = Color(0xFF0F1419);
  static const Color black38 = Colors.black38;
  static const Color black54 = Colors.black54;
  static const Color blue500 = Color(0xff3600ff);
  static const Color yellow100 = Color(0xffFEED00);
  static const Color purple100 = Color(0xff8F00FF);
  static const Color orange50 = Color(0xffEB7923);
  static const Color orange100 = Color(0xffE0726A);
  static const Color orange200 = Color(0xffE4733A);
  static const Color orange300 = Color(0xffFF7910);
  static const Color red50 = Color(0xffD84D44);
  static const Color red100 = Color(0xffBE3127);
  static const Color red200 = Color(0xffE40203);
  static const Color red300 = Color(0xffFE5157);
  static const Color red = Colors.red;
  static const Color white = Color(0xffffffff);
  static const Color whiteBone = Color.fromARGB(255, 227, 227, 227);
  static Color green700 = Colors.green[700]!;
  static const Color green100 = Color(0xffDBF4EF);
  static const Color green200 = Color(0xf2B3EBBA);
  static const Color green300 = Color(0xffABF06C);
  static const Color green400 = Color(0xff81C784);
  static const Color green500 = Color(0xff2A945F);
  static const Color green600 = Color(0xff3f860c);
  static const Color green800 = Color(0xff0ae331);
  static const Color green900 = Color(0xff40e57c);
  static const Color darkGreen50 = Color(0xff007E2D);
  static const Color darkGreen100 = Color(0xff008044);
  static Color grey500 = Colors.grey[500]!;
  static Color grey350 = Colors.grey[350]!;
  static const Color grey = Color(0xffF0EEEE);
  static const Color greyPrimary = Colors.grey;
  static const Color grey50 = Color(0xffCFD9DE);
  static const Color grey70 = Color(0xffCFD2D8);
  static const Color grey100 = Color(0xff6E767D);
  static const Color grey200 = Color(0xff536471);
  static const Color grey300 = Color(0xff8f9287);
  static const Color grey400 = Color.fromARGB(255, 81, 77, 77);
  static const Color grey600 = Color(0xff4F4F4F);
  static const Color grey700 = Color(0xffBDBDBD);
  static const Color bluegrey = Colors.blueGrey;
  static Color blugrey150 = Colors.blueGrey.withAlpha(150);
  static Color bluegrey400 = Colors.blueGrey[400]!;
  static Color bluegrey500 = Colors.blueGrey[500]!;
  static Color bluegrey600 = Colors.blueGrey[600]!;
  static Color bluegrey700 = Colors.blueGrey[700]!;
}
