import 'package:flutter/material.dart';

import '../../../theme/app_theme.dart';
import '../../../utils/utils_screen.dart';

class HoldinOneShop extends StatefulWidget {
  const HoldinOneShop({Key? key}) : super(key: key);

  @override
  State<HoldinOneShop> createState() => _HoldinOneShopState();
}

class _HoldinOneShopState extends State<HoldinOneShop> {
  @override
  Widget build(BuildContext context) {
    DateTime dateTime = DateTime.now();
    double w = Utils.getWidth(context);
    double h = Utils.getWidth(context);
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 68 * h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(width: 16 * w),
              const Text(
                "Do’kon 1",
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
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
              SizedBox(width: 16 * w),
            ],
          ),
          Expanded(
            child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: 6,
                itemBuilder: (_, i) {
                  return Container(
                    margin: EdgeInsets.only(
                      top: 16 * h,
                      left: 16 * w,
                      right: 16 * w,
                    ),
                    height: 66,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(26),
                      color: AppTheme.rectAngelOne,
                    ),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            left: 6 * w,
                          ),
                          width: 60 * w,
                          height: 60 * w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(60),
                            image: const DecorationImage(
                              image: AssetImage(
                                'assets/images/dress_lady.jpg',
                              ),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        SizedBox(width: 12 * w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 8 * h),
                            const Text(
                              "Ko’ylak nomi",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                color: AppTheme.black,
                              ),
                            ),
                            SizedBox(height: 6 * h),
                            Text(
                              dateTime.day.toString() +
                                  "." +
                                  dateTime.month.toString() +
                                  "." +
                                  dateTime.year.toString(),
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Poppins',
                                color: AppTheme.magenta.withOpacity(0.5),
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                         Text(
                          "\$800",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            color: AppTheme.black.withOpacity(0.5),
                          ),
                        ),
                        SizedBox(width: 16 * w),
                      ],
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
