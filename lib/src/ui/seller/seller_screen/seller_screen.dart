import 'package:flutter/material.dart';
import 'package:holding_app/src/model/saller_screen_model/saller_screen_model.dart';
import 'package:holding_app/src/theme/app_theme.dart';
import 'package:holding_app/src/utils/utils_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../saller_screen_buying/saller_screen_buying.dart';

class SallerScreen extends StatefulWidget {
  const SallerScreen({Key? key}) : super(key: key);

  @override
  State<SallerScreen> createState() => _SallerScreenState();
}

class _SallerScreenState extends State<SallerScreen> {
  List<SallerModel> sale = [
    SallerModel(
      price: 10000,
      name: "Salon Nomi",
      image: "assets/images/dress_lady.jpg",
    ),
    SallerModel(
      price: 10000,
      name: "Salon Nomi",
      image: "assets/images/dress_lady.jpg",
    ),
    SallerModel(
      price: 10000,
      name: "Salon Nomi",
      image: "assets/images/dress_lady.jpg",
    ),
    SallerModel(
      price: 10000,
      name: "Salon Nomi",
      image: "assets/images/dress_lady.jpg",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    DateTime dateTime = DateTime.now();
    double w = Utils.getWidth(context);
    double h = Utils.getHeight(context);
    return Scaffold(
      backgroundColor: AppTheme.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ListView(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: 16 * w,
                    top: 16 * h,
                  ),
                  child: const Text(
                    "Kunlik sotuvlar",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: AppTheme.black,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 16 * w, right: 16 * w),
                  height: 1,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: AppTheme.black,
                    ),
                  ),
                ),
                ListView.builder(
                  itemCount: sale.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (_, i) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return BuyingScreen();
                          }),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.only(
                          left: 16 * w,
                          top: 16 * h,
                          right: 16 * w,
                        ),
                        width: double.infinity,
                        height: 64,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppTheme.backGray,
                        ),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                left: 16,
                                top: 8,
                                bottom: 8,
                              ),
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.transparent,
                                image: DecorationImage(
                                  image: AssetImage(
                                    sale[i].image,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 24),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 8),
                                Text(
                                  sale[i].name,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'Poppins',
                                    color: AppTheme.black,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    Text(
                                      "\$" + sale[i].price.toString() + " ",
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w700,
                                        fontSize: 10,
                                        color: AppTheme.lightGreen,
                                      ),
                                    ),
                                    SizedBox(width: 24),
                                    Text(
                                      dateTime.day.toString() +
                                          "." +
                                          dateTime.month.toString() +
                                          "." +
                                          dateTime.year.toString(),
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Poppins',
                                        color: AppTheme.lightYellow,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Spacer(),
                            Container(
                              margin: EdgeInsets.only(
                                right: 18,
                              ),
                              child: SvgPicture.asset(
                                "assets/icons/vector_left.svg",
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 16 * w,
                    top: 24 * h,
                  ),
                  child: const Text(
                    "Haftalik sotuvlar",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: AppTheme.black,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 16 * w, right: 16 * w),
                  height: 1,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: AppTheme.black,
                    ),
                  ),
                ),
                ListView.builder(
                  itemCount: sale.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (_, i) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return BuyingScreen();
                          }),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.only(
                          left: 16 * w,
                          top: 16 * h,
                          right: 16 * w,
                        ),
                        width: double.infinity,
                        height: 64,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppTheme.backGray,
                        ),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                left: 16,
                                top: 8,
                                bottom: 8,
                              ),
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.transparent,
                                image: DecorationImage(
                                  image: AssetImage(
                                    sale[i].image,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 24),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 8),
                                Text(
                                  sale[i].name,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'Poppins',
                                    color: AppTheme.black,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    Text(
                                      "\$" + sale[i].price.toString() + " ",
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w700,
                                        fontSize: 10,
                                        color: AppTheme.lightGreen,
                                      ),
                                    ),
                                    SizedBox(width: 24),
                                    Text(
                                      dateTime.day.toString() +
                                          "." +
                                          dateTime.month.toString() +
                                          "." +
                                          dateTime.year.toString(),
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Poppins',
                                        color: AppTheme.lightYellow,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Spacer(),
                            Container(
                              margin: EdgeInsets.only(
                                right: 18,
                              ),
                              child: SvgPicture.asset(
                                "assets/icons/vector_left.svg",
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
