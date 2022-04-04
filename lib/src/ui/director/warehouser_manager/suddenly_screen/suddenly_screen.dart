import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:holding_app/src/model/director_screen_models/director_models_screen.dart';
import 'package:holding_app/src/theme/app_theme.dart';

import '../../../../utils/utils_screen.dart';

class SuddenlyScreen extends StatefulWidget {
  const SuddenlyScreen({Key? key}) : super(key: key);

  @override
  State<SuddenlyScreen> createState() => _SuddenlyScreenState();
}

class _SuddenlyScreenState extends State<SuddenlyScreen> {
  List<SudModel> dota2 = [
    SudModel(
      name: "Jemchuk",
      image: "assets/images/dress 3.png",
      count: 95,
    ),
    SudModel(
      name: "Matolar",
      image: "assets/images/dress1.png",
      count: 100,
    ),
    SudModel(
      name: "Iplar",
      image: "assets/images/dress2.png",
      count: 150,
    ),
    SudModel(
      name: "Matolar",
      image: "assets/images/dress1.png",
      count: 80,
    ),
    SudModel(
      name: "Matolar",
      image: "assets/images/dress 3.png",
      count: 56,
    ),
    SudModel(
      name: "Iplar",
      image: "assets/images/dress2.png",
      count: 78,
    ),
    SudModel(
      name: "Iplar",
      image: "assets/images/dress2.png",
      count: 78,
    ),
    SudModel(
      name: "Iplar",
      image: "assets/images/dress2.png",
      count: 78,
    ),
    SudModel(
      name: "Iplar",
      image: "assets/images/dress2.png",
      count: 78,
    ),
    SudModel(
      name: "Iplar",
      image: "assets/images/dress2.png",
      count: 78,
    ),
    SudModel(
      name: "Matolar",
      image: "assets/images/dress 3.png",
      count: 56,
    ),
    SudModel(
      name: "Matolar",
      image: "assets/images/dress 3.png",
      count: 56,
    ),SudModel(
      name: "Matolar",
      image: "assets/images/dress 3.png",
      count: 56,
    ),
    SudModel(
      name: "Matolar",
      image: "assets/images/dress 3.png",
      count: 56,
    ),
    SudModel(
      name: "Matolar",
      image: "assets/images/dress 3.png",
      count: 56,
    ),

  ];

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
                "Maxsulot nomi                                 ",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Roboto',
                  fontSize: 16,
                  color: AppTheme.black,
                ),
              ),
              const Spacer(),
              const Text(
                "Dona",
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
          Container(
            margin: EdgeInsets.only(
              left: 16 * w,
              right: 16 * w,
            ),
            width: double.infinity,
            height: 1,
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: AppTheme.black.withOpacity(0.5),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: dota2.length,
              itemBuilder: (_, i) {
                return Column(
                  children: [
                    SizedBox(height: 12 * h),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            left: 16 * w,
                            right: 24 * w,
                          ),
                          width: 30 * w,
                          height: 30 * w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.transparent,
                          ),
                          child: Center(
                            child: Hero(
                              tag: "prep",
                              child: Image.asset(
                                dota2[i].image,
                                width: 60,
                                height: 60,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Text(
                          dota2[i].name,
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                            color: AppTheme.black.withOpacity(0.8),
                          ),
                        ),
                        const Spacer(),
                        Text(
                          dota2[i].count.toString() + " ",
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                            color: AppTheme.black.withOpacity(0.8),
                          ),
                        ),
                        SizedBox(width: 16 * w),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 16 * w,
                        right: 16 * w,
                        top: 6,
                      ),
                      width: double.infinity,
                      height: 1,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: AppTheme.gray,
                        ),
                      ),
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
