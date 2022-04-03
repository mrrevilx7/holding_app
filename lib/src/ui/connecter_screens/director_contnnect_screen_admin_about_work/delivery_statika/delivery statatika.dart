import 'package:flutter/material.dart';

import '../../../../model/delivery_screen_model/delivery_screen_model.dart';
import '../../../../theme/app_theme.dart';
import '../../../../utils/utils_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pie_chart/pie_chart.dart';

class DeliveryStatika extends StatefulWidget {
  const DeliveryStatika({Key? key}) : super(key: key);

  @override
  State<DeliveryStatika> createState() => _DeliveryStatikaState();
}

class _DeliveryStatikaState extends State<DeliveryStatika> {
  List<DeliveryModel> deliver = [
    DeliveryModel(
      location: "Chilonzor 14",
      stayLoc: "Yunusobod 19",
      name: "Women",
      image: "assets/images/image_oxe.png",
    ),
    DeliveryModel(
      location: "Chilonzor 14",
      stayLoc: "Yunusobod 19",
      name: "Women",
      image: "assets/images/image_oxe.png",
    ),
    DeliveryModel(
      location: "Chilonzor 14",
      stayLoc: "Yunusobod 19",
      name: "Women",
      image: "assets/images/image_oxe.png",
    ),
    DeliveryModel(
      location: "Chilonzor 14",
      stayLoc: "Yunusobod 19",
      name: "Women",
      image: "assets/images/image_oxe.png",
    ),
    DeliveryModel(
      location: "Chilonzor 14",
      stayLoc: "Yunusobod 19",
      name: "Women",
      image: "assets/images/image_oxe.png",
    ),
    DeliveryModel(
      location: "Chilonzor 14",
      stayLoc: "Yunusobod 19",
      name: "Women",
      image: "assets/images/image_oxe.png",
    ),
  ];
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 68 * h),
          Row(
            children: [
              SizedBox(width: 16 * w),
              const Text(
                "Do’konlar ro’yxati",
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
          Container(
            margin: EdgeInsets.only(
              top: 24 * h,
              left: 16 * w,
            ),
            child: Text(
              "Kutshdagi maxsulotlar",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontFamily: 'Poppins',
                fontSize: 12,
                color: AppTheme.black.withOpacity(0.7),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 1,
            margin: EdgeInsets.only(
              left: 16 * w,
              right: 16 * w,
            ),
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: AppTheme.gray,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 16 * h,
              left: 16 * w,
              right: 16 * w,
            ),
            height: 272,
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: deliver.length,
              itemBuilder: (_, i) {
                return Container(
                  margin: EdgeInsets.only(
                    top: 6 * h,
                  ),
                  width: double.infinity,
                  height: 64 * h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: AppTheme.levender,
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          left: 16 * w,
                        ),
                        width: 50 * w,
                        height: 50 * w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage(
                              deliver[i].image,
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      SizedBox(width: 24 * w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 8 * h),
                          Text(
                            deliver[i].name,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              color: AppTheme.black,
                            ),
                          ),
                          SizedBox(height: 10 * h),
                          Row(
                            children: [
                              Text(
                                deliver[i].location,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w700,
                                  color: AppTheme.lightGreen,
                                ),
                              ),
                              SizedBox(width: 12 * w),
                              SvgPicture.asset(
                                "assets/icons/vector_anti.svg",
                                width: 10 * w,
                                height: 10 * w,
                              ),
                              SizedBox(width: 12 * w),
                              Text(
                                deliver[i].stayLoc,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Roboto',
                                  color: AppTheme.yellow,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 24 * w,
                          height: 24 * w,
                          margin: EdgeInsets.only(right: 16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: Center(
                            child: SvgPicture.asset(
                              "assets/icons/vector_left.svg",
                              width: 24,
                              height: 24,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 24,
            ),
            padding: EdgeInsets.symmetric(horizontal: 16 * w),
            child: Center(
              child: PieChart(
                dataMap: dataMap,
                animationDuration: const Duration(milliseconds: 1000),
                gradientList: gradientList,
                // chartType: ChartType.ring,
                emptyColorGradient: [
                  AppTheme.circleGreen,
                  AppTheme.circleGreen,
                ],
                chartLegendSpacing: 32,
                chartRadius: MediaQuery.of(context).size.width / 1.2,
                legendOptions: const LegendOptions(
                  showLegendsInRow: true,
                  legendPosition: LegendPosition.bottom,
                  legendTextStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                chartValuesOptions: const ChartValuesOptions(
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
