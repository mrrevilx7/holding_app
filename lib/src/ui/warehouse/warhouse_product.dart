import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:holding_app/src/theme/app_theme.dart';

import '../../utils/utils_screen.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    double w = Utils.getWidth(context);
    double h = Utils.getWidth(context);
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: 32 * h),
          Row(
            children: [
              SizedBox(width: 16 * w),
              const Text(
                "Rasm",
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  color: AppTheme.black,
                ),
              ),
              SizedBox(width: 16),
              Text(
                "Maxsulot nomi",
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  color: AppTheme.black,
                ),
              ),
              Container(
                width: 60 * w,
                height: 20 * h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(
                    color: AppTheme.lightGreen,
                  ),
                ),
                child: Center(
                  child: Text(
                    "Xolati",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins',
                      fontSize: 12,
                      color: AppTheme.lightGreen,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
