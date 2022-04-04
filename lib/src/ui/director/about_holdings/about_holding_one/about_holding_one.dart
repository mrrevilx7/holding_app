import 'dart:io';

import 'package:flutter/material.dart';
import 'package:holding_app/src/theme/app_theme.dart';

import '../../../../model/delivery_screen_model/delivery_screen_model.dart';
import '../../../../model/manager_screen_models/holdin_one_screen_model/holdin_one.dart';
import '../../../../utils/utils_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AboutHoldingOne extends StatefulWidget {
  const AboutHoldingOne({Key? key}) : super(key: key);

  @override
  State<AboutHoldingOne> createState() => _AboutHoldingOneState();
}

class _AboutHoldingOneState extends State<AboutHoldingOne> {
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
          SizedBox(height: 18 * h),
          Row(
            children: [
              SizedBox(width: 24 * w),
              Expanded(
                child: Container(
                  height: 115 * h,
                  child: Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.only(top: 25 * h),
                        height: 90 * h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: AppTheme.rectAngelOne,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("2"),
                            SizedBox(height: 8 * h),
                            Text("Do’konlar"),
                            SizedBox(height: 8 * h),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          width: 52 * w,
                          height: 52 * w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(52),
                          ),
                          child: Image.asset(
                            "assets/images/shop_two.png",
                            width: 52 * w,
                            height: 52 * w,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 12 * w),
              Expanded(
                child: Container(
                  height: 115 * h,
                  child: Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.only(top: 25 * h),
                        height: 90 * h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: AppTheme.rectAngelOne,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("2"),
                            SizedBox(height: 8 * h),
                            Text("Do’konlar"),
                            SizedBox(height: 8 * h),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          width: 52 * w,
                          height: 52 * w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(52),
                          ),
                          child: Image.asset(
                            "assets/images/shop_two.png",
                            width: 52 * w,
                            height: 52 * w,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 12 * w),
              Expanded(
                child: Container(
                  height: 115 * h,
                  child: Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.only(top: 25 * h),
                        height: 90 * h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: AppTheme.rectAngelOne,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("2"),
                            SizedBox(height: 8 * h),
                            Text("Do’konlar"),
                            SizedBox(height: 8 * h),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          width: 52 * w,
                          height: 52 * w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(52),
                          ),
                          child: Image.asset(
                            "assets/images/shop_two.png",
                            width: 52 * w,
                            height: 52 * w,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 24 * w),
            ],
          ),
          SizedBox(height: 18 * h),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 24 * w),
              Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Haftalik",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      color: AppTheme.black,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Oylik",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                      fontSize: 12,
                      color: AppTheme.black.withOpacity(0.7),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Yillik",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                      fontSize: 12,
                      color: AppTheme.black.withOpacity(0.7),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Hammasi",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                      fontSize: 12,
                      color: AppTheme.black.withOpacity(0.7),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 24 * w),
            ],
          ),
          Container(
            margin: EdgeInsets.only(
              left: 36 * w,
              right: 36 * w,
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
          Container(
            margin: EdgeInsets.only(
              left: 24 * w,
              right: 24 * w,
            ),
            height: 468 * h,
            child: ListView.builder(
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              itemCount: holdin.length,
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
          Container(
            margin: EdgeInsets.only(
              left: 24 * w,
            ),
            child: Text(
              "Salonlar ro’yxati",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontFamily: 'Poppins',
                fontSize: 16,
                color: AppTheme.black,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 1,
            margin: EdgeInsets.only(
              left: 24 * w,
              right: 24 * w,
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
              left: 24 * w,
              right: 24 * w,
              bottom: Platform.isIOS ? 32 : 24,
            ),
            height: 272,
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: deliver.length,
              itemBuilder: (_, i) {
                return Container(
                  margin: EdgeInsets.only(
                    top: 14 * h,
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
                          margin: const EdgeInsets.only(right: 16),
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
        ],
      ),
    );
  }
}
