import 'package:flutter/material.dart';
import 'package:holding_app/src/theme/app_theme.dart';
import 'package:holding_app/src/utils/utils_screen.dart';

class DressLoadScreen extends StatefulWidget {
  const DressLoadScreen({Key? key}) : super(key: key);

  @override
  State<DressLoadScreen> createState() => _DressLoadScreenState();
}

class _DressLoadScreenState extends State<DressLoadScreen> {
  @override
  Widget build(BuildContext context) {
    double w = Utils.getWidth(context);
    double h = Utils.getHeight(context);
    return Scaffold(
      backgroundColor: AppTheme.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(left: 36 * w,  top: 82 * h, right: 36 * h,),
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
                )),
          ),
          SizedBox(height: 40 * h),
          Row(
            children: [
              SizedBox(width: 36 * w),
              Expanded(
                child: Text(
                  "Sotuvchi:",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: AppTheme.black,
                  ),
                ),
              ),
              Text(
                "Palonchi pismadonchi",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                  color: AppTheme.black,
                  letterSpacing: 0.2,
                ),
              ),
              SizedBox(width: 36 * w),
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
          SizedBox(height: 32 * h),
          Row(
            children: [
              SizedBox(width: 36 * w),
              Expanded(
                child: Text(
                  "Ko’ylak nomi:",
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
              SizedBox(width: 36 * w),
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
          SizedBox(height: 32 * h),
          Row(
            children: [
              SizedBox(width: 36 * w),
              Expanded(
                child: Text(
                  "Ko’ylak narxi:",
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
              SizedBox(width: 36 * w),
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
          SizedBox(height: 32 * h),
          Row(
            children: [
              SizedBox(width: 36 * w),
              Expanded(
                child: Text(
                  "Olingan sanasi:",
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
              SizedBox(width: 36 * w),
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
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              margin: EdgeInsets.only(top: 40,),
              width: 244 * w,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: AppTheme.levender,
                border: Border.all(
                  width: 1,
                  color: AppTheme.magentaDark,
                ),
              ),
              child: Center(child: Text(
                "Qaytish",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Poppins',
                  color: AppTheme.magentaDark,
                ),
              ),),
            ),
          ),
        ],
      ),
    );
  }
}
