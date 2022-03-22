

import 'package:flutter/material.dart';
import 'package:holding_app/src/theme/app_theme.dart';

import '../../../utils/utils_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FivetyScreen extends StatefulWidget {
  const FivetyScreen({Key? key}) : super(key: key);

  @override
  State<FivetyScreen> createState() => _FivetyScreenState();
}

class _FivetyScreenState extends State<FivetyScreen> {
  @override
  Widget build(BuildContext context) {
    DateTime dateTime = DateTime.now();
    double w = Utils.getWidth(context);
    double h = Utils.getHeight(context);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 16 * h),
          Container(
            margin: EdgeInsets.only(
              left: 16 * w,
            ),
            child: Text("Kelin haqida"),
          ),
          Container(
            margin: EdgeInsets.only(
              left: 16 * w,
              right: 60 * w,
            ),
            width: double.infinity,
            height: h,
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: AppTheme.black,
              ),
            ),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: 16,
                  top: 16,
                ),
                width: 280 * w,
                height: 40 * h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    width: 1,
                    color: AppTheme.black,
                  ),
                ),
                child: Row(
                  children: [
                    Text("Ko’ylak  nomini tanlang"),
                    SizedBox(width: 24 * w),
                    SvgPicture.asset(
                      "assets/icons/vector_top.svg",
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  right: 16 * w,
                ),
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
                child: Center(
                  child: SvgPicture.asset("assets/icons/plus.svg"),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 16, right: 16),
            width: double.infinity,
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                width: 1,
                color: AppTheme.black,
              ),
            ),
            child: Text("Ko’ylak   haqida"),
          ),
          Container(
            margin: EdgeInsets.only(left: 16, right: 16),
            width: double.infinity,
            height: 57,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                width: 1,
                color: AppTheme.black,
              ),
            ),
            child: Text("Kelin ismi"),
          ),
          Container(
            margin: EdgeInsets.only(left: 16, right: 16),
            width: double.infinity,
            height: 57,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                width: 1,
                color: AppTheme.black,
              ),
            ),
            child: Text("Kelin  bergan pul"),
          ),
          SizedBox(height: 24),
          Row(
            children: [
              SizedBox(width: 16),
              Text("To’y sanasi:"),
              SizedBox(width: 36),
              Container(
                width: 122,
                height: 46,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    bottomLeft: Radius.circular(16),
                  ),
                  border: Border.all(
                    width: 1,
                    color: AppTheme.black,
                  ),
                ),
                child: Text("12/02/2021"),
              ),
              Container(
                width: 74 * w,
                height: 46 * h,
                decoration: BoxDecoration(
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
          SizedBox(height: 24),
          Row(
            children: [
              SizedBox(width: 16),
              Text("Pasport berildi:"),
              SizedBox(width: 8),
              SvgPicture.asset(
                "asset/icons/tick_black.svg",
                width: 24,
                height: 24,
                fit: BoxFit.cover,
              ),
              Spacer(),
              Text("Telda sotildi:"),
              SizedBox(width: 8),
              SvgPicture.asset(
                "asset/icons/tick_black.svg",
                width: 24,
                height: 24,
                fit: BoxFit.cover,
              ),
              SizedBox(width: 16),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 16 * w,
              ),
              Column(
                children: [
                  Text(
                    "Mijoz haqida",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: AppTheme.black,
                    ),
                  ),
                  SizedBox(height: 2),
                  Container(
                    width: double.infinity,
                    height: 1,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: AppTheme.black.withOpacity(0.5),
                      ),
                    ),
                  ),
                ],
              ),
              Spacer(),
              Container(
                width: 24 * w,
                height: 24 * h,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
                child: Center(
                  child: SvgPicture.asset(
                    "asset/icons/plus.svg",
                    width: 24,
                    height: 24,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 24),
          Container(
            width: 356 * w,
            height: 40,
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: AppTheme.black.withOpacity(0.7),
              ),
            ),
            child: Row(
              children: [
                Text("Salonlar ro’yxati"),
                Spacer(),
                SvgPicture.asset(
                  "assets/icons/vector_top.svg",
                ),
                SizedBox(width: 18),
              ],
            ),
          ),
          SizedBox(height: 24),
          Container(
            width: 356 * w,
            height: 40,
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: AppTheme.black.withOpacity(0.7),
              ),
            ),
            child: Row(
              children: [
                Text("Salon bergan pul"),
              ],
            ),
          ),
          SizedBox(height: 24),
          Row(
            children: [
              SizedBox(width: 16),
              Text("Jo’natish sanasi:"),
              SizedBox(width: 36),
              Container(
                width: 122,
                height: 46,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    bottomLeft: Radius.circular(16),
                  ),
                  border: Border.all(
                    width: 1,
                    color: AppTheme.black,
                  ),
                ),
                child: Text("12/02/2021"),
              ),
              Container(
                width: 74 * w,
                height: 46 * h,
                decoration: BoxDecoration(
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
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: AppTheme.black,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              SizedBox(
                width: 18,
              ),
              Text("Yetkazib berish shart emas"),
            ],
          ),
          Container(
            margin:  EdgeInsets.only(top: 24),
            width: 151 * w,
            height: 43 * h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: AppTheme.black,
            ),
            child: Center(
              child: Text(
                "Saqlash",
                style: TextStyle(color: AppTheme.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
