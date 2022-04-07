import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../theme/app_theme.dart';
import '../../../utils/utils_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SerioDirectorScreen extends StatefulWidget {
  const SerioDirectorScreen({Key? key}) : super(key: key);

  @override
  State<SerioDirectorScreen> createState() => _SerioDirectorScreenState();
}

class _SerioDirectorScreenState extends State<SerioDirectorScreen> {
  @override
  Widget build(BuildContext context) {
    DateTime dateTime = DateTime.now();
    double w = Utils.getWidth(context);
    double h = Utils.getWidth(context);
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 18 * h),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: 16 * w,
                ),
                width: 100 * w,
                height: 38 * h,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    bottomLeft: Radius.circular(16),
                  ),
                  border: Border.all(
                    width: 1,
                    color: AppTheme.black,
                  ),
                ),
                child: Center(
                    child: Text(
                  "12/02/2021",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    color: AppTheme.black.withOpacity(0.5),
                  ),
                )),
              ),
              Container(
                width: 48 * w,
                height: 38 * h,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                  ),
                  color: AppTheme.black,
                ),
                child: Center(
                  child: SvgPicture.asset(
                    "assets/icons/calendar.svg",
                    width: 24,
                    height: 24,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: SvgPicture.asset(
                  "assets/icons/vector_anti.svg",
                  color: AppTheme.black,
                  width: 15,
                  height: 15,
                ),
              ),
              Container(
                width: 100 * w,
                height: 38 * h,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    bottomLeft: Radius.circular(16),
                  ),
                  border: Border.all(
                    width: 1,
                    color: AppTheme.black,
                  ),
                ),
                child: Center(
                    child: Text(
                  "12/02/2021",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    color: AppTheme.black.withOpacity(0.5),
                  ),
                )),
              ),
              Container(
                width: 48 * w,
                height: 38 * h,
                margin: EdgeInsets.only(
                  right: 16 * w,
                ),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                  ),
                  color: AppTheme.black,
                ),
                child: Center(
                  child: SvgPicture.asset(
                    "assets/icons/calendar.svg",
                    width: 24,
                    height: 24,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 24 * h),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 16 * w,
            ),
            margin: EdgeInsets.only(
              left: 16 * w,
              right: 16 * w,
            ),
            width: double.infinity,
            height: 38 * h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: AppTheme.holdingOne,
            ),
            child: Row(
              children: [
                Text(
                  "Summa",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: AppTheme.black.withOpacity(0.7),
                  ),
                ),
                Spacer(),
                Text(
                  "\$ 10.000",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: AppTheme.black,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 24 * h),
          Row(
            children: [
              SizedBox(width: 16 * w ),
              const Text(
                "Nomi",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: AppTheme.black,
                ),
              ),
              const Text(
                "Soni",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: AppTheme.black,
                ),
              ),
              const Text(
                "Narxi",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: AppTheme.black,
                ),
              ),
              SizedBox(width: 16 * w ),
            ],
          ),
        ],
      ),
    );
  }
}
