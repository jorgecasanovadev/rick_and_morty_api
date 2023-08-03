import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../themes/themes.dart';

class ToastMessages {
  static Future<bool?> showToast(
    String message, {
    Toast? toastLength = Toast.LENGTH_LONG,
  }) {
    return Fluttertoast.showToast(
      msg: message,
      toastLength: toastLength,
      gravity: ToastGravity.BOTTOM,
    );
  }

  static Future<bool?> showSuccess(String message) {
    return Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.green[500],
      textColor: Colors.white,
      // fontSize: 16.0,
    );
  }

  static Future<bool?> showError(String message) {
    return Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: red,
      textColor: Colors.white,
      // fontSize: 16.0,
    );
  }
}
