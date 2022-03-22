import 'package:flutter/material.dart';

import '../../../theme/app_theme.dart';
import '../../../utils/utils_screen.dart';

class BuyingScreen extends StatefulWidget {
  const BuyingScreen({Key? key}) : super(key: key);

  @override
  State<BuyingScreen> createState() => _BuyingScreenState();
}

class _BuyingScreenState extends State<BuyingScreen> {
  @override
  Widget build(BuildContext context) {
    double w = Utils.getWidth(context);
    double h = Utils.getWidth(context);
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 40 * h),
          Row(
            children: [
              SizedBox(width: 16 * w),
              const Expanded(
                child: Text(
                  "Sotivchi",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                    color: AppTheme.black,
                  ),
                ),
              ),
              Container(
                width: 32 * w,
                height: 32 * w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32),
                  color: Colors.transparent,
                ),
                child: Center(
                  child: Image.asset(
                    "assets/images/mexico_girl.png",
                    width: 32,
                    height: 32,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 16 * w),
            ],
          ),
          Container(
            margin: EdgeInsets.only(
              left: 36 * w,
              top: 40 * h,
              right: 36 * h,
            ),
            width: double.infinity,
            height: 272,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.transparent,
              image: const DecorationImage(
                image: AssetImage(
                  'assets/images/dress_lady.jpg',
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(height: 28 * h),
          Row(
            children: [
              SizedBox(width: 16 * w),
              Expanded(
                child: Text(
                  "Ko’ylak nomi",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: AppTheme.black,
                  ),
                ),
              ),
              Text(
                "Paris",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                  color: AppTheme.black,
                  letterSpacing: 0.2,
                ),
              ),
              SizedBox(width: 16 * w),
            ],
          ),
          Container(
            margin: EdgeInsets.only(
              left: 36,
              top: 1,
              right: 36,
            ),
            height: 1,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(
                width: 0.8,
                color: AppTheme.black.withOpacity(0.4),
              ),
            ),
          ),
          SizedBox(height: 24 * h),
          Row(
            children: [
              SizedBox(width: 16 * w),
              Expanded(
                child: Text(
                  "Ko’ylak narxi",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: AppTheme.black,
                  ),
                ),
              ),
              Text(
                "10.000",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                  color: AppTheme.black,
                  letterSpacing: 0.2,
                ),
              ),
              SizedBox(width: 16 * w),
            ],
          ),
          Container(
            margin: EdgeInsets.only(
              left: 36,
              top: 1,
              right: 36,
            ),
            height: 1,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(
                width: 0.8,
                color: AppTheme.black.withOpacity(0.4),
              ),
            ),
          ),
          SizedBox(height: 24 * h),
          Row(
            children: [
              SizedBox(width: 16 * w),
              Expanded(
                child: Text(
                  "Berilgan summa",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: AppTheme.black,
                  ),
                ),
              ),
              Text(
                "5.000",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                  color: AppTheme.black,
                  letterSpacing: 0.2,
                ),
              ),
              SizedBox(width: 16 * w),
            ],
          ),
          Container(
            margin: EdgeInsets.only(
              left: 36,
              top: 1,
              right: 36,
            ),
            height: 1,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(
                width: 0.8,
                color: AppTheme.black.withOpacity(0.4),
              ),
            ),
          ),
          SizedBox(height: 24 * h),
          Row(
            children: [
              SizedBox(width: 16 * w),
              Expanded(
                child: Text(
                  "Qolgan summa summa",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: AppTheme.black,
                  ),
                ),
              ),
              Text(
                "5.000",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                  color: AppTheme.black,
                  letterSpacing: 0.2,
                ),
              ),
              SizedBox(width: 16 * w),
            ],
          ),
          Container(
            margin: EdgeInsets.only(
              left: 36,
              top: 1,
              right: 36,
            ),
            height: 1,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(
                width: 0.8,
                color: AppTheme.black.withOpacity(0.4),
              ),
            ),
          ),
          SizedBox(height: 24 * h),
          Row(
            children: [
              SizedBox(width: 16 * w),
              Expanded(
                child: Text(
                  "Jo’natilish sanasi",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: AppTheme.black,
                  ),
                ),
              ),
              Text(
                "12.02.2022",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                  color: AppTheme.black,
                  letterSpacing: 0.2,
                ),
              ),
              SizedBox(width: 16 * w),
            ],
          ),
          Container(
            margin: EdgeInsets.only(
              left: 36,
              top: 1,
              right: 36,
            ),
            height: 1,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(
                width: 0.8,
                color: AppTheme.black.withOpacity(0.4),
              ),
            ),
          ),
          SizedBox(height: 24 * h),
          Row(
            children: [
              SizedBox(width: 16 * w),
              Expanded(
                child: Text(
                  "Salon nomi",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: AppTheme.black,
                  ),
                ),
              ),
              Text(
                "Olaaa",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                  color: AppTheme.black,
                  letterSpacing: 0.2,
                ),
              ),
              SizedBox(width: 16 * w),
            ],
          ),
          Container(
            margin: EdgeInsets.only(
              left: 36,
              top: 1,
              right: 36,
            ),
            height: 1,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(
                width: 0.8,
                color: AppTheme.black.withOpacity(0.4),
              ),
            ),
          ),
          SizedBox(height: 24 * h),
          Row(
            children: [
              SizedBox(width: 16 * w),
              Expanded(
                child: Text(
                  "Telefon raqam",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: AppTheme.black,
                  ),
                ),
              ),
              Text(
                "+998981158312",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                  color: AppTheme.black,
                  letterSpacing: 0.2,
                ),
              ),
              SizedBox(width: 16 * w),
            ],
          ),
          Container(
            margin: EdgeInsets.only(
              left: 36,
              top: 1,
              right: 36,
            ),
            height: 1,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(
                width: 0.8,
                color: AppTheme.black.withOpacity(0.4),
              ),
            ),
          ),
          SizedBox(height: 24 * h),
          Row(
            children: [
              SizedBox(width: 16 * w),
              Expanded(
                child: Text(
                  "Salon manzili",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: AppTheme.black,
                  ),
                ),
              ),
              Text(
                "24 kv-dom",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                  color: AppTheme.black,
                  letterSpacing: 0.2,
                ),
              ),
              SizedBox(width: 16 * w),
            ],
          ),
          Container(
            margin: EdgeInsets.only(
              left: 36,
              top: 1,
              right: 36,
            ),
            height: 1,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(
                width: 0.8,
                color: AppTheme.black.withOpacity(0.4),
              ),
            ),
          ),
          SizedBox(height: 24 * h),
          Row(
            children: [
              SizedBox(width: 16 * w),
              Expanded(
                child: Text(
                  "Yetkazib berish",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: AppTheme.black,
                  ),
                ),
              ),
              Text(
                "Shart",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                  color: AppTheme.black,
                  letterSpacing: 0.2,
                ),
              ),
              SizedBox(width: 16 * w),
            ],
          ),
          Container(
            margin: EdgeInsets.only(
              left: 36,
              top: 1,
              right: 36,
            ),
            height: 1,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(
                width: 0.8,
                color: AppTheme.black.withOpacity(0.4),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
