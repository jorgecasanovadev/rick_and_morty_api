import 'package:flutter/material.dart';

class CustomPrimaryButton extends StatelessWidget {
  const CustomPrimaryButton({
    required this.title,
    required this.onPressed,
    required this.foregroundColor,
    required this.backgroundColor,
    required this.titleTextStyle,
    this.iconButton,
    this.hasShadow = true,
    this.hasIconButton = false,
    super.key,
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
          if (hasShadow)
            BoxShadow(
              color: backgroundColor.withOpacity(0.35),
              blurRadius: 10,
              offset: const Offset(0, 4),
            )
          else
            const BoxShadow(),
        ],
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
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
              Radius.circular(20),
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (hasIconButton)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: iconButton,
              )
            else
              Container(),
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
