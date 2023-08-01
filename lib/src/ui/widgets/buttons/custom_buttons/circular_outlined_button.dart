import 'package:flutter/material.dart';

import '../../../themes/themes.dart';

class CircularOutlinedButton extends StatelessWidget {
  const CircularOutlinedButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.enabled = true,
  });
  final bool enabled;
  final VoidCallback? onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: OutlinedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: darkGreen100,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          side: BorderSide(
            color: enabled ? darkGreen100 : greyPrimary,
          ),
        ),
        onPressed: enabled ? onPressed : null,
        child: Padding(
          padding: const EdgeInsets.only(
            top: 10,
            bottom: 10,
            left: 8,
            right: 8,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Flexible(
                child: Row(
                  children: <Widget>[
                    const Icon(Icons.add),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 8,
                        ),
                        child: Text(
                          text,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
