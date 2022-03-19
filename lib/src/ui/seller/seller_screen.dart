import 'package:flutter/material.dart';
import 'package:holding_app/src/theme/app_theme.dart';
import 'package:holding_app/src/utils/utils_screen.dart';

class SallerScreen extends StatefulWidget {
  const SallerScreen({Key? key}) : super(key: key);

  @override
  State<SallerScreen> createState() => _SallerScreenState();
}

class _SallerScreenState extends State<SallerScreen> {
  @override
  Widget build(BuildContext context) {
    double w = Utils.getWidth(context);
    double h = Utils.getHeight(context);
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: 16),
          Text(
            "Kunlik sotuvlar",
            style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w700,
              fontSize: 16,
              color: AppTheme.black,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 24, right: 24),
            height: 1,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: AppTheme.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
