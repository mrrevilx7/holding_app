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
      image: "dress1.png",
    ),
    SallerModel(
      price: 10000,
      name: "Salon Nomi",
      image: "dress2.png",
    ),
    SallerModel(
      price: 10000,
      name: "Salon Nomi",
      image: "dress3.png",
    ),
    SallerModel(
      price: 10000,
      name: "Salon Nomi",
      image: "dress_lady.png",
    ),
    SallerModel(price: 10000, name: "Salon Nomi", image: "lady.png"),
  ];

  @override
  Widget build(BuildContext context) {
    DateTime dateTime = DateTime.now();
    double w = Utils.getWidth(context);
    double h = Utils.getHeight(context);
    return Scaffold(
      backgroundColor: AppTheme.white,
      body: ListView(
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
                    color: AppTheme.lightgray,
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(),
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image.asset(
                          sale[i].image,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 24),
                      Column(
                        children: [
                          Text(
                            sale[i].name,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Poppins',
                              color: AppTheme.black,
                            ),
                          ),
                          SizedBox(height: 12),
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "\$" + sale[i].price.toString() + " ",
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 10,
                                    color: AppTheme.lightGreen,
                                  ),
                                ),
                              ),
                              // SizedBox(width: 18),
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
                      Expanded(
                        child: Column(
                          children: [
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
              return Container(
                margin: EdgeInsets.only(
                  left: 16 * w,
                  top: 16 * h,
                  right: 16 * w,
                ),
                width: double.infinity,
                height: 64,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppTheme.lightgray,
                ),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(),
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.asset(
                        sale[i].image,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 24),
                    Column(
                      children: [
                        Text(
                          sale[i].name,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Poppins',
                            color: AppTheme.black,
                          ),
                        ),
                        SizedBox(height: 12),
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                "\$" + sale[i].price.toString() + " ",
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 10,
                                  color: AppTheme.lightGreen,
                                ),
                              ),
                            ),
                            // SizedBox(width: 18),
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
                    Expanded(
                      child: Column(
                        children: [
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
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
