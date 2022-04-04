import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:holding_app/src/theme/app_theme.dart';

import '../../../../utils/utils_screen.dart';
import 'package:pie_chart/pie_chart.dart';

class HoldinOneWeek extends StatefulWidget {
  const HoldinOneWeek({Key? key}) : super(key: key);

  @override
  State<HoldinOneWeek> createState() => _HoldinOneWeekState();
}

class _HoldinOneWeekState extends State<HoldinOneWeek> {
  final gradientList = <List<Color>>[
    [
      AppTheme.yellowCircle,
      AppTheme.yellowCircle,
    ],
    [
      AppTheme.holding3Text,
      AppTheme.holding3Text,
    ],
  ];
  Map<String, double> dataMap = {
    "Berilgan pullar": 1.5,
    "Sotilgan ko’ylaklar": 3,
    "Beriladigan pullar": 1.2,
  };

  @override
  Widget build(BuildContext context) {
    double w = Utils.getWidth(context);
    double h = Utils.getWidth(context);
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(height: 24 * h),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: 16 * w,
                  right: 24 * w,
                ),
                width: 40 * w,
                height: 40 * w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.transparent,
                ),
                child: Center(
                  child: Hero(
                    tag: "prep",
                    child: Image.asset(
                      "assets/images/mexico_girl.png",
                      width: 40,
                      height: 40,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Text(
                "Sotilgan ko’ylaklar",
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                  color: AppTheme.black.withOpacity(0.8),
                ),
              ),
              const Spacer(),
              Text(
                " 95 ",
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
          SizedBox(height: 16 * h),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: 16 * w,
                  right: 24 * w,
                ),
                width: 40 * w,
                height: 40 * w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.transparent,
                ),
                child: Center(
                  child: Hero(
                    tag: "prep",
                    child: Image.asset(
                      "assets/images/mexico_girl.png",
                      width: 40,
                      height: 40,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Text(
                "Sotilgan ko’ylaklar",
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                  color: AppTheme.black.withOpacity(0.8),
                ),
              ),
              const Spacer(),
              Text(
                " 95 ",
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
          SizedBox(height: 16 * h),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: 16 * w,
                  right: 24 * w,
                ),
                width: 40 * w,
                height: 40 * w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.transparent,
                ),
                child: Center(
                  child: Hero(
                    tag: "prep",
                    child: Image.asset(
                      "assets/images/mexico_girl.png",
                      width: 40,
                      height: 40,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Text(
                "Sotilgan ko’ylaklar",
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                  color: AppTheme.black.withOpacity(0.8),
                ),
              ),
              const Spacer(),
              Text(
                " 95 ",
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
          SizedBox(height: 36 * h),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 24 * w),
            child: Center(
              child: PieChart(
                dataMap: dataMap,
                animationDuration: Duration(milliseconds: 1000),
                gradientList: gradientList,
                chartType: ChartType.ring,
                emptyColorGradient: [
                  AppTheme.black,
                  AppTheme.black,
                ],
                chartLegendSpacing: 28,
                chartRadius: MediaQuery.of(context).size.width / 1.4,
                legendOptions: LegendOptions(
                  showLegendsInRow: true,
                  legendPosition: LegendPosition.bottom,
                  legendTextStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                chartValuesOptions: ChartValuesOptions(
                  showChartValueBackground: false,
                  showChartValuesOutside: false,
                  decimalPlaces: 0,
                  chartValueBackgroundColor: AppTheme.black,
                  showChartValues: false,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
