import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CenterDialog {
  static void showErrorDialog(BuildContext context, String msg) {
    showDialog(
      context: context,
      builder: (context) {
        return const CupertinoAlertDialog(
          title: Text("Xatolik yuzberdi!!!"),
        );
      },
    );
  }
}
