import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ArcText extends StatelessWidget {
  const ArcText({
    required this.radius,
    required this.text,
    required this.textStyle,
    this.startAngle = 0,
    super.key,
  });

  final double radius;
  final String text;
  final double startAngle;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) => CustomPaint(
        painter: _Painter(
          radius,
          text,
          textStyle,
          initialAngle: startAngle,
        ),
      );
}

class _Painter extends CustomPainter {
  _Painter(this.radius, this.text, this.textStyle, {this.initialAngle = 0});

  final num radius;
  final String text;
  final double initialAngle;
  final TextStyle textStyle;

  final _textPainter = TextPainter(textDirection: TextDirection.ltr);

  @override
  void paint(Canvas canvas, Size size) {
    canvas.translate(size.width / 2, size.height / 2 - radius);

    if (initialAngle != 0) {
      final d = 2 * radius * math.sin(initialAngle / 2);
      final rotationAngle = _calculateRotationAngle(0, initialAngle);
      canvas
        ..rotate(rotationAngle)
        ..translate(d, 0);
    }

    var angle = initialAngle;
    for (var i = 0; i < text.length; i++) {
      angle = _drawLetter(canvas, text[i], angle);
    }
  }

  double _drawLetter(Canvas canvas, String letter, double prevAngle) {
    _textPainter
      ..text = TextSpan(text: letter, style: textStyle)
      ..layout(
        maxWidth: double.maxFinite,
      );

    final d = _textPainter.width;
    final alpha = 2 * math.asin(d / (2 * radius));

    final newAngle = _calculateRotationAngle(prevAngle, alpha);
    canvas.rotate(newAngle);

    _textPainter.paint(canvas, Offset(0, -_textPainter.height));
    canvas.translate(d, 0);

    return alpha;
  }

  double _calculateRotationAngle(double prevAngle, double alpha) =>
      (alpha + prevAngle) / 2;

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
