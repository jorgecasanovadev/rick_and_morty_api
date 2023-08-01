import 'package:flutter/material.dart';

import '../../../themes/themes.dart';

class RefreshButton extends StatelessWidget {
  const RefreshButton({
    super.key,
    required this.title,
    required this.onPressed,
  });
  final String title;
  final VoidCallback? onPressed;
// "No se encontraron formularios registrados"
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          IconButton(
            iconSize: 35,
            icon: const Icon(
              Icons.refresh,
              color: darkGreen100,
            ),
            onPressed: onPressed,
          ),
        ],
      ),
    );
  }
}
