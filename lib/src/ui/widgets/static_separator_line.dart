import 'package:flutter/material.dart';

import '../themes/themes.dart';

class StaticSeparatorLine extends StatelessWidget {
  const StaticSeparatorLine({
    required this.separatorCounter,
    this.color = grey100,
    super.key,
  });

  final int separatorCounter;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        separatorCounter,
        (index) => Expanded(
          child: Container(
            height: 5,
            margin: const EdgeInsets.symmetric(horizontal: 1),
            decoration: BoxDecoration(color: color),
          ),
        ),
      ),
    );
  }
}
