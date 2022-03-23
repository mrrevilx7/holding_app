import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CenterErrorDialog {
  static void showErrorDialog(BuildContext context, index) {
    showDialog(
      context: context,
      builder: (context) {
        return const CupertinoAlertDialog(
          title: Text("Login yoki Password xato. Iltimos qayta urinib ko'ring"),
        );
      },
    );
  }
}
