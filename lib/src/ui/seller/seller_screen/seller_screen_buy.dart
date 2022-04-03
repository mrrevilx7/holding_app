import 'package:flutter/material.dart';
import 'package:holding_app/src/model/saller_screen_model/saller_screen_model.dart';
import 'package:holding_app/src/theme/app_theme.dart';
import 'package:holding_app/src/utils/utils_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../saller_screen_buying/saller_screen_buying.dart';

class BuyingScreen extends StatefulWidget {
  const BuyingScreen({Key? key}) : super(key: key);

  @override
  State<BuyingScreen> createState() => _BuyingScreenState();
}

class _BuyingScreenState extends State<BuyingScreen> {
  List<SallerModel> sale = [
    SallerModel(
      price: 10000,
      name: "Paris",
      image: "assets/images/marrys.png",
    ),
    SallerModel(
      price: 10000,
      name: "Paris",
      image: "assets/images/marrys.png",
    ),
    SallerModel(
      price: 10000,
      name: "Paris",
      image: "assets/images/marrys.png",
    ),
    SallerModel(
      price: 10000,
      name: "Paris",
      image: "assets/images/marrys.png",
    ),
    SallerModel(
      price: 10000,
      name: "Paris",
      image: "assets/images/marrys.png",
    ),
    SallerModel(
      price: 10000,
      name: "Paris",
      image: "assets/images/marrys.png",
    ),
    SallerModel(
      price: 10000,
      name: "Paris",
      image: "assets/images/marrys.png",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    DateTime dateTime = DateTime.now();
    double w = Utils.getWidth(context);
    double h = Utils.getHeight(context);
    return Scaffold(
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(
              left: 16 * w,
            ),
            child: const Text(
              "Kunlik sotuvlar",
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: AppTheme.black),
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
          ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: sale.length,
              itemBuilder: (_, i) {
                return Container(
                  margin: EdgeInsets.only(
                    left: 16 * w,
                    right: 16 * w,
                    top: 12 * h,
                  ),
                  width: double.infinity,
                  height: 64,
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
                              sale[i].image,
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      SizedBox(width: 24 * w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 8),
                          Text(
                            sale[i].name,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
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
                                "\$" + sale[i].price.toString() + " ",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w700,
                                  color: AppTheme.lightGreen,
                                ),
                              ),
                              SizedBox(width: 12),
                              Text(
                                dateTime.day.toString() +
                                    "." +
                                    dateTime.month.toString() +
                                    "." +
                                    dateTime.year.toString(),
                                style: TextStyle(
                                  fontSize: 10,
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
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const BuyingIdScreen();
                              },
                            ),
                          );
                        },
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
              }),
          Container(
            margin: EdgeInsets.only(
              left: 16 * w,
            ),
            child: const Text(
              "Haftalik sotuvlar",
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: AppTheme.black),
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
          ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: sale.length,
              itemBuilder: (_, i) {
                return Container(
                  margin: EdgeInsets.only(
                    left: 16 * w,
                    right: 16 * w,
                    top: 12 * h,
                  ),
                  width: double.infinity,
                  height: 64,
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
                              sale[i].image,
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      SizedBox(width: 24 * w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 8),
                          Text(
                            sale[i].name,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
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
                                "\$" + sale[i].price.toString() + " ",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w700,
                                  color: AppTheme.lightGreen,
                                ),
                              ),
                              SizedBox(width: 12),
                              Text(
                                dateTime.day.toString() +
                                    "." +
                                    dateTime.month.toString() +
                                    "." +
                                    dateTime.year.toString(),
                                style: TextStyle(
                                  fontSize: 10,
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
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const BuyingScreen();
                              },
                            ),
                          );
                        },
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
              }),
        ],
      ),
    );
  }
}
