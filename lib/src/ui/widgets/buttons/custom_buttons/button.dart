import 'package:flutter/material.dart';

import '../../../themes/themes.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
    required this.onPressed,
    required this.label,
    this.isLoading = false,
    this.height = 50,
    this.fontSize = 18,
  });
  final bool isLoading;
  final String label;
  final VoidCallback onPressed;
  final double? height;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: darkGreen100,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        onPressed: isLoading ? null : onPressed,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: isLoading
              ? const CircularProgressIndicator(
                  color: green600,
                )
              : Text(
                  label,
                  style: TextStyle(
                    fontSize: fontSize,
                    color: Colors.white,
                  ),
                ),
        ),
      ),
    );
  }
}
