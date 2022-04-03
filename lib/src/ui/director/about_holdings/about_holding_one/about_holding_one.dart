import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:holding_app/src/theme/app_theme.dart';

import '../../../../utils/utils_screen.dart';

class AboutHoldingOne extends StatefulWidget {
  const AboutHoldingOne({Key? key}) : super(key: key);

  @override
  State<AboutHoldingOne> createState() => _AboutHoldingOneState();
}

class _AboutHoldingOneState extends State<AboutHoldingOne> {
  @override
  Widget build(BuildContext context) {
    double w = Utils.getWidth(context);
    double h = Utils.getWidth(context);
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(height: 56 * h),
          Row(
            children: [
              SizedBox(width: 16 * w),
              const Text(
                "Holding1",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  color: AppTheme.black,
                ),
              ),
              const Spacer(),
              Container(
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
          const SizedBox(height: 18),
          const Center(
            child: Text(
              "Ish hqida ma’lumotlar",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontFamily: 'Poppins',
                fontSize: 20,
                color: AppTheme.black,
              ),
            ),
          ),
          const SizedBox(height: 18),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: 18 * h,
                  left: 16 * w,
                ),
                width: 110 * w,
                height: 90 * h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: AppTheme.rectAngelOne,
                ),
                child: Stack(
                  children: [
                    Container(
                      width: 52 * w,
                      height: 52 * w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(52),
                      ),
                      child: Center(
                        child: Hero(
                          tag: "prep",
                          child: Image.asset(
                            "assets/images/shop_two.png",
                            width: 52 * w,
                            height: 52 * w,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 4 * h),
                    Container(
                      child: Center(
                        child: Text(
                          "2",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Poppins',
                            fontSize: 15,
                            color: AppTheme.black,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 12 * h),
                    Container(
                      child: Center(
                        child: Text(
                          "Do’konlar",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Poppins',
                            fontSize: 12,
                            color: AppTheme.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
