import 'package:flutter/material.dart';

import '../../../themes/themes.dart';

class CircularElevatedButton extends StatelessWidget {
  const CircularElevatedButton({
    required this.onPressed,
    required this.startIcon,
    required this.endIcon,
    required this.text,
    super.key,
  });
  final Icon startIcon;
  final Icon endIcon;
  final VoidCallback? onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: darkGreen100,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.only(
            top: 15,
            bottom: 15,
            left: 8,
            right: 8,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: <Widget>[
                  startIcon,
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text(
                      text,
                    ),
                  )
                ],
              ),
              endIcon
            ],
          ),
        ),
      ),
    );
  }
}
