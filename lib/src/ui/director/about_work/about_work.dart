import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:holding_app/src/theme/app_theme.dart';

import '../../../utils/utils_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pie_chart/pie_chart.dart';

class AboutWorkScreen extends StatefulWidget {
  const AboutWorkScreen({Key? key}) : super(key: key);

  @override
  State<AboutWorkScreen> createState() => _AboutWorkScreenState();
}

class _AboutWorkScreenState extends State<AboutWorkScreen> {
  bool _BoxShape = false;
  final gradientList = <List<Color>>[
    [
      AppTheme.yellowCircle,
      AppTheme.yellowCircle,
    ],
    [
      AppTheme.holdingCircle,
      AppTheme.holdingCircle,
    ],
  ];
  Map<String, double> dataMap = {
    "Holding1": 1.5,
    "Holding2": 3,
    "Holding3": 0.5,
  };

  @override
  Widget build(BuildContext context) {
    double w = Utils.getWidth(context);
    double h = Utils.getWidth(context);
    return Scaffold(
      backgroundColor: AppTheme.white,
      body: Column(
        children: [
          SizedBox(
            height: 24 * h,
          ),
          Row(
            children: [
              SizedBox(width: 16 * w),
              const Text(
                "Ish turlari",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Poppins',
                  fontSize: 18,
                  color: AppTheme.black,
                ),
              ),
              const Spacer(),
              Container(
                margin: EdgeInsets.only(
                  right: 16 * w,
                ),
                width: 50 * w,
                height: 30 * h,
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                ),
                child: Center(
                  child: SvgPicture.asset(
                    "assets/icons/icons_plus_line.svg",
                    width: 50 * w,
                    height: 30 * h,
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
              GestureDetector(
                onTap: () {
                },
                child: Container(
                  margin: EdgeInsets.only(
                    left: 16 * w,
                    top: 24 * h,
                  ),
                  width: 120 * w,
                  height: 136 * h,
                  decoration: BoxDecoration(
                    color: AppTheme.holding1,
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(63),
                      topLeft: Radius.circular(16),
                      bottomLeft: Radius.circular(16),
                      bottomRight: Radius.circular(16),
                    ),
                    border: Border.all(
                      width: 1,
                      color: AppTheme.white,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: AppTheme.holding1.withOpacity(0.5),
                        spreadRadius: 4,
                        blurRadius: 3,
                        offset: Offset.zero, // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          left: 8 * w,
                          top: 8 * h,
                        ),
                        width: 52 * w,
                        height: 52 * w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(52),
                          color: AppTheme.white,
                          border: Border.all(
                            width: 3,
                            color: AppTheme.holdingOne,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: AppTheme.holdingOne.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Center(
                          child: SvgPicture.asset(
                            "assets/icons/question.svg",
                            width: 16 * w,
                            height: 16 * w,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: 8 * w,
                          top: 12 * h,
                        ),
                        child: const Text(
                          "Holding1",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            color: AppTheme.violetDark,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: 8 * w,
                          top: 2 * h,
                        ),
                        child: const Text(
                          "Wedding salon",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Poppins',
                            fontSize: 12,
                            color: AppTheme.darkGray,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 16 * w,
                  top: 24 * h,
                ),
                width: 120 * w,
                height: 136 * h,
                decoration: BoxDecoration(
                  color: AppTheme.holding2,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(63),
                    topLeft: Radius.circular(16),
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                  ),
                  border: Border.all(
                    width: 1,
                    color: AppTheme.white,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: AppTheme.holding2.withOpacity(0.5),
                      spreadRadius: 4,
                      blurRadius: 3,
                      offset: Offset.zero, // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        left: 8 * w,
                        top: 8 * h,
                      ),
                      width: 52 * w,
                      height: 52 * w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(52),
                        color: AppTheme.white,
                        border: Border.all(
                          width: 3,
                          color: AppTheme.holdingTwo,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: AppTheme.holdingTwo.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          "assets/icons/question.svg",
                          width: 16 * w,
                          height: 16 * w,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 8 * w,
                        top: 12 * h,
                      ),
                      child: const Text(
                        "Holding2",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          color: AppTheme.black,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 8 * w,
                        top: 2 * h,
                      ),
                      child: const Text(
                        "Eshik ",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Poppins',
                          fontSize: 12,
                          color: AppTheme.darkGray,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 16 * w,
                  top: 24 * h,
                  right: 16 * w,
                ),
                width: 120 * w,
                height: 136 * h,
                decoration: BoxDecoration(
                  color: AppTheme.holding3,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(63),
                    topLeft: Radius.circular(16),
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                  ),
                  border: Border.all(
                    width: 1,
                    color: AppTheme.white,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: AppTheme.holding3.withOpacity(0.5),
                      spreadRadius: 4,
                      blurRadius: 3,
                      offset: Offset.zero, // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        left: 8 * w,
                        top: 8 * h,
                      ),
                      width: 52 * w,
                      height: 52 * w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(52),
                        color: AppTheme.white,
                        border: Border.all(
                          width: 3,
                          color: AppTheme.holdingThree,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: AppTheme.holdingThree.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          "assets/icons/question.svg",
                          width: 16 * w,
                          height: 16 * w,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 8 * w,
                        top: 12 * h,
                      ),
                      child: const Text(
                        "Holding3",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          color: AppTheme.holding3Text,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 8 * w,
                        top: 2 * h,
                      ),
                      child: const Text(
                        "Mobile app",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Poppins',
                          fontSize: 12,
                          color: AppTheme.darkGray,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 36 * h),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16 * w),
            child: Center(
              child: PieChart(
                dataMap: dataMap,
                animationDuration: Duration(milliseconds: 1000),
                gradientList: gradientList,
                // chartType: ChartType.ring,
                emptyColorGradient: [
                  AppTheme.circleGreen,
                  AppTheme.circleGreen,
                ],
                chartLegendSpacing: 32,
                chartRadius: MediaQuery.of(context).size.width / 1.2,
                legendOptions: LegendOptions(
                  showLegendsInRow: true,
                  legendPosition: LegendPosition.bottom,
                  legendTextStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                chartValuesOptions: ChartValuesOptions(
                  showChartValuesInPercentage: true,
                  showChartValueBackground: false,
                  showChartValuesOutside: true,
                  decimalPlaces: 0,
                  chartValueBackgroundColor: AppTheme.black,
                  showChartValues: true,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
