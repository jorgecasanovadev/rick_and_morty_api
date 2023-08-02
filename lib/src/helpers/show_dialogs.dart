import 'package:choppi_test/src/ui/themes/themes.dart';
import 'package:flutter/material.dart';

Future<bool?> showAlertDialog(
  BuildContext context, {
  required void Function()? onPressed,
  String title = '',
  String content = '',
  String boldContent = '',
  bool justifyContent = false,
  bool barrierDismissible = false,
  String okButtonText = 'ACEPTAR',
}) {
  final result = showDialog<bool>(
    context: context,
    barrierDismissible: barrierDismissible,
    builder: (BuildContext context) => AlertDialog(
      title: Text(
        title,
        style: TypographyStyle.st3.grey600,
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Text(
              content,
              textAlign: justifyContent ? TextAlign.justify : null,
              style: TypographyStyle.bt.grey600,
            ),
          ),
          Text(
            boldContent,
            textAlign: justifyContent ? TextAlign.justify : null,
            style: TypographyStyle.btBold.grey600,
          ),
        ],
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.pop(context, false),
          style: TextButton.styleFrom(
            foregroundColor: darkGreen100,
          ),
          child: Text(
            'CANCELAR',
            style: TypographyStyle.b2Space16.darkGreen100,
          ),
        ),
        TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            foregroundColor: darkGreen100,
          ),
          child: Text(
            okButtonText.toUpperCase(),
            style: TypographyStyle.b2Space16.darkGreen100,
          ),
        ),
      ],
    ),
  );
  return result;
}

Future<bool?> showConfirmDialog(
  BuildContext context, {
  String title = '',
  String content = '',
  bool barrierDismissible = false,
  String okButtonText = 'ACEPTAR',
}) {
  final result = showDialog<bool>(
    context: context,
    barrierDismissible: barrierDismissible,
    builder: (BuildContext context) => AlertDialog(
      title: Text(
        title,
        style: TypographyStyle.st3.grey600,
      ),
      content: Text(content, style: TypographyStyle.bt.grey600),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.pop(context, false),
          style: TextButton.styleFrom(
            foregroundColor: darkGreen100,
          ),
          child: Text(
            'CANCELAR',
            style: TypographyStyle.b2Space16,
          ),
        ),
        TextButton(
          onPressed: () => Navigator.pop(context, true),
          style: TextButton.styleFrom(
            foregroundColor: darkGreen100,
          ),
          child: Text(
            okButtonText,
            style: TypographyStyle.b2Space16,
          ),
        ),
      ],
    ),
  );
  return result;
}

Future<bool?> showOkDialog(
  BuildContext context, {
  String title = '',
  String content = '',
  String okButtonText = 'OK',
  // bool barrierDismissible = false,
}) {
  final result = showDialog<bool>(
    context: context,
    // barrierDismissible: barrierDismissible,
    builder: (BuildContext context) => AlertDialog(
      title: Text(
        title,
        style: TypographyStyle.st3.grey600,
      ),
      content: Text(
        content,
        style: TypographyStyle.bt,
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.pop(context, true),
          style: TextButton.styleFrom(
            foregroundColor: darkGreen100,
          ),
          child: Text(
            okButtonText,
            style: TypographyStyle.b2Space16,
          ),
        ),
      ],
    ),
  );
  return result;
}
