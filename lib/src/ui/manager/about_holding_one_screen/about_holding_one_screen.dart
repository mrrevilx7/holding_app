import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:holding_app/src/theme/app_theme.dart';

import '../../../model/manager_screen_models/holdin_one_screen_model/holdin_one.dart';
import '../../../utils/utils_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HoldingScreen extends StatefulWidget {
  const HoldingScreen({Key? key}) : super(key: key);

  @override
  State<HoldingScreen> createState() => _HoldingScreenState();
}

class _HoldingScreenState extends State<HoldingScreen> {
  List<HoldinModel> holdin = [
    HoldinModel(
      price: 15000,
      title: "CUHK Medical Centre",
      name: "Do’kon 1",
      image: "assets/images/home.png",
    ),
    HoldinModel(
      price: 15000,
      title: "CUHK Medical Centre",
      name: "Do’kon 1",
      image: "assets/images/home_two.png",
    ),
    HoldinModel(
      price: 15000,
      title: "CUHK Medical Centre",
      name: "Do’kon 1",
      image: "assets/images/home.png",
    ),
    HoldinModel(
      price: 15000,
      title: "CUHK Medical Centre",
      name: "Do’kon 1",
      image: "assets/images/home.png",
    ),
    HoldinModel(
      price: 15000,
      title: "CUHK Medical Centre",
      name: "Do’kon 1",
      image: "assets/images/home.png",
    ),
    HoldinModel(
      price: 15000,
      title: "CUHK Medical Centre",
      name: "Do’kon 1",
      image: "assets/images/home_two.png",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    double w = Utils.getWidth(context);
    double h = Utils.getWidth(context);
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 68 * h),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: 16 * w,
                ),
                width: 24 * w,
                height: 24 * w,
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                ),
                child: Center(
                  child: SvgPicture.asset(
                    "assets/icons/arrow_left_bold.svg",
                    width: 24,
                    height: 24,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const Spacer(),
              Container(
                margin: EdgeInsets.only(
                  right: 16 * w,
                ),
                width: 60 * w,
                height: 60 * w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60),
                  color: Colors.transparent,
                ),
                child: Center(
                  child: Hero(
                    tag: "prep",
                    child: Image.asset(
                      "assets/images/mexico_girl.png",
                      width: 60,
                      height: 60,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 24 * h),
          Center(
            child: Text(
              " Do’konlar haqida ma’lumot",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontFamily: 'Poppins',
                fontSize: 20,
                color: AppTheme.black,
              ),
            ),
          ),
          SizedBox(height: 24 * h),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 16 * w),
                padding: EdgeInsets.only(
                  top: 16 * h,
                ),
                width: 120 * w,
                height: 90 * h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: AppTheme.lightYellow,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      "assets/icons/big_plus.svg",
                      width: 32 * w,
                      height: 32 * w,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 12 * h),
                    Text(
                      "Do’konlar",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Poppins',
                        fontSize: 12,
                        color: AppTheme.black.withOpacity(0.5),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 16 * w),
                width: 120 * w,
                height: 90 * h,
                padding: EdgeInsets.only(
                  top: 16 * h,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: AppTheme.magentaBlue,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      "assets/icons/big_plus.svg",
                      width: 32 * w,
                      height: 32 * w,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 12 * h),
                    Text(
                      "Ishchilar",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Poppins',
                        fontSize: 12,
                        color: AppTheme.black.withOpacity(0.5),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 16 * w),
                width: 120 * w,
                height: 90 * h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: AppTheme.neturalGreen,
                ),
                padding: EdgeInsets.only(
                  top: 16 * h,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      "assets/icons/big_plus.svg",
                      width: 32 * w,
                      height: 32 * w,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 12 * h),
                    Text(
                      "Ombor",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Poppins',
                        fontSize: 12,
                        color: AppTheme.black.withOpacity(0.5),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(
              top: 18 * h,
              right: 16 * w,
              left: 16 * w,
            ),
            width: double.infinity,
            height: 1,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  spreadRadius: 0,
                  blurRadius: 4,
                  offset: Offset(0, 3),
                ),
              ],
              border: Border.all(
                width: 1,
                color: AppTheme.black,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: 5,
              itemBuilder: (_, i) {
                return Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            left: 16 * w,
                            top: 18 * h,
                          ),
                          width: 125 * w,
                          height: 125 * w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.transparent,
                          ),
                          child: Center(
                            child: Hero(
                              tag: "prep",
                              child: Image.asset(
                                holdin[i].image,
                                width: 125,
                                height: 125,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 16 * w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              holdin[i].name,
                              style: const TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                color: AppTheme.black,
                              ),
                            ),
                            SizedBox(height: 8 * h),
                            Text(
                              holdin[i].title,
                              style: const TextStyle(
                                fontSize: 14,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                color: AppTheme.black,
                              ),
                            ),
                            SizedBox(height: 8 * h),
                            Text(
                              "\$" + holdin[i].price.toString() + " ",
                              style: const TextStyle(
                                fontSize: 14,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                color: AppTheme.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
