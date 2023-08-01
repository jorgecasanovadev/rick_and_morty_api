import 'package:flutter/material.dart';

class CustomPrimaryButton extends StatelessWidget {
  const CustomPrimaryButton({
    super.key,
    required this.title,
    required this.onPressed,
    required this.foregroundColor,
    required this.backgroundColor,
    required this.titleTextStyle,
    this.iconButton,
    this.hasShadow = true,
    this.hasIconButton = false,
  });

  final String title;
  final bool hasShadow;
  final bool hasIconButton;
  final Icon? iconButton;
  final Color foregroundColor;
  final Color backgroundColor;
  final VoidCallback onPressed;

  final TextStyle titleTextStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        boxShadow: [
          hasShadow
              ? BoxShadow(
                  color: backgroundColor.withOpacity(0.35),
                  blurRadius: 10.0,
                  offset: const Offset(0, 4),
                )
              : const BoxShadow(),
        ],
        borderRadius: const BorderRadius.all(
          Radius.circular(20.0),
        ),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          foregroundColor: foregroundColor,
          backgroundColor: backgroundColor,
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20.0),
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            hasIconButton
                ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: iconButton,
                  )
                : Container(),
            Text(
              title,
              style: titleTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
