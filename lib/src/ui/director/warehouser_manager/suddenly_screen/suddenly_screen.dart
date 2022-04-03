import 'package:flutter/material.dart';
import 'package:holding_app/src/theme/app_theme.dart';

import '../../../../utils/utils_screen.dart';

class SuddenlyScreen extends StatefulWidget {
  const SuddenlyScreen({Key? key}) : super(key: key);

  @override
  State<SuddenlyScreen> createState() => _SuddenlyScreenState();
}

class _SuddenlyScreenState extends State<SuddenlyScreen> {
  @override
  Widget build(BuildContext context) {
    double w = Utils.getWidth(context);
    double h = Utils.getWidth(context);
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 48 * h),
          Row(
            children: [
              SizedBox(width: 16 * w),
              const Text(
                "Jami turdagi maxsulotlar :",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Roboto',
                  fontSize: 16,
                  color: AppTheme.black,
                ),
              ),
              const Spacer(),
              const Text(
                "400",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Roboto',
                  fontSize: 16,
                  color: AppTheme.black,
                ),
              ),
              SizedBox(width: 16 * w),
            ],
          ),
          SizedBox(height: 24 * h),
          Row(
            children: [
              SizedBox(
                width: 16 * w,
              ),
              const Text(
                "Jami turdagi maxsulotlar :",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Roboto',
                  fontSize: 16,
                  color: AppTheme.black,
                ),
              ),
              const Spacer(),
              const Text(
                "Metr",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Roboto',
                  fontSize: 16,
                  color: AppTheme.black,
                ),
              ),
              SizedBox(
                width: 16 * w,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
