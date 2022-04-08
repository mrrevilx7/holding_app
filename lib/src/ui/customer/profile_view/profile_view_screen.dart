import 'dart:io';

import 'package:flutter/material.dart';
import 'package:holding_app/src/bloc/Profille_bloc/Profile_bloc.dart';
import 'package:holding_app/src/model/information_model/information_model.dart';
import 'package:holding_app/src/theme/app_theme.dart';
import 'package:holding_app/src/ui/customer/news_screen/news_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utils/utils_screen.dart';
import '../dress_load_screen/dress_load_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final int _inforCount = 4;
  int _selectedIndex = 0;

  List<InformationModel> data = [
    InformationModel(
      name: "Camila",
      image: "assets/images/dress1.png",
      deressName: "Paris",
      price: 10.000,
    ),
    InformationModel(
      name: "Camila",
      image: "assets/images/dress2.png",
      deressName: "Paris",
      price: 10.000,
    ),
    InformationModel(
      name: "Camila",
      image: "assets/images/dress1.png",
      deressName: "Paris",
      price: 10.000,
    ),
    InformationModel(
      name: "Camila",
      image: "assets/images/dress2.png",
      deressName: "Paris",
      price: 10.000,
    ),
    InformationModel(
      name: "Camila",
      image: "assets/images/dress1.png",
      deressName: "Paris",
      price: 10.000,
    ),
    InformationModel(
      name: "Camila",
      image: "assets/images/dress1.png",
      deressName: "Paris",
      price: 10.000,
    ),
    InformationModel(
      name: "Camila",
      image: "assets/images/dress1.png",
      deressName: "Paris",
      price: 10.000,
    ),
    InformationModel(
      name: "Camila",
      image: "assets/images/dress1.png",
      deressName: "Paris",
      price: 10.000,
    ),
    InformationModel(
      name: "Camila",
      image: "assets/images/dress1.png",
      deressName: "Paris",
      price: 10.000,
    ),
    InformationModel(
      name: "Camila",
      image: "assets/images/dress1.png",
      deressName: "Paris",
      price: 10.000,
    ),
    InformationModel(
      name: "Camila",
      image: "assets/images/dress1.png",
      deressName: "Paris",
      price: 10.000,
    ),
    InformationModel(
      name: "Camila",
      image: "assets/images/dress1.png",
      deressName: "Paris",
      price: 10.000,
    ),
    InformationModel(
      name: "Camila",
      image: "assets/images/dress1.png",
      deressName: "Paris",
      price: 10.000,
    ),
  ];

  PageController _profileCon = PageController();

  @override
  void initState() {
    profileBloc.getCustomers;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    DateTime dateTime = DateTime.now();
    double w = Utils.getWidth(context);
    double h = Utils.getHeight(context);
    return Scaffold(
      backgroundColor: AppTheme.white,
      body:
          //StreamBuilder(
          //   stream: profileBloc.getCustomers,
          //   builder: (BuildContext context, AsyncSnapshot<ProfileModel> snapshot) {
          //     if (snapshot.hasData) {
          //       List<ProfileResult> porfile = snapshot.data!.results;
          ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            margin: EdgeInsets.only(top: 40 * h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 40 * w),
                        width: 126 * w,
                        height: 126 * w,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(126),
                        ),
                        child: Image.asset(
                          "assets/images/camila.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 16 * h),
                      const Text(
                        "Salon nomi",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Roboto',
                          fontSize: 20,
                          color: AppTheme.magenta,
                        ),
                      ),
                      SizedBox(height: 12 * h),
                      Text(
                        "Username",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Roboto',
                          fontSize: 18,
                          color: AppTheme.magenta.withOpacity(0.6),
                        ),
                      ),
                      SizedBox(height: 12 * h),
                      const Text(
                        "+99845645156",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Roboto',
                          fontSize: 18,
                          color: AppTheme.magenta,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    margin: EdgeInsets.only(
                      left: 16 * w,
                      top: 28 * h,
                    ),
                    width: 235 * w,
                    height: 62,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                      color: AppTheme.white,
                      boxShadow: [
                        BoxShadow(
                          color: AppTheme.black.withOpacity(0.3),
                          spreadRadius: 0,
                          blurRadius: 4,
                          offset:
                              const Offset(0, 1), // changes position of shadow
                        ),
                      ],
                    ),
                    child: const Center(
                      child: Text(
                        "Holding1",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Poppins',
                          color: AppTheme.violetDark,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const NewsScreen();
                      },
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(
                    right: 16 * w,
                    top: 28 * h,
                  ),
                  width: 121 * w,
                  height: 62,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    color: AppTheme.neturalBlue,
                    boxShadow: [
                      BoxShadow(
                        color: AppTheme.black.withOpacity(0.3),
                        spreadRadius: 0,
                        blurRadius: 4,
                        offset:
                            const Offset(0, 1), // changes position of shadow
                      ),
                    ],
                  ),
                  child: const Center(
                    child: Text(
                      "NEWS",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        color: AppTheme.white,
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 24 * h),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 16 * w),
              const Text(
                "Barcha ma’lumotlar:",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Roboto',
                  color: AppTheme.magenta,
                ),
              ),
            ],
          ),
          SizedBox(height: 24 * h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(
                    left: 16 * w,
                  ),
                  width: double.infinity,
                  height: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: AppTheme.levender,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 8 * h),
                      const Text(
                        "Ko’ylak soni",
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: AppTheme.magentaDark,
                        ),
                      ),
                      SizedBox(height: 6 * h),
                      const Text(
                        "3",
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: AppTheme.magentaDark,
                        ),
                      ),
                      SizedBox(height: 6 * h),
                      const Text(
                        "dona",
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: AppTheme.magentaDark,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 12 * w),
              Expanded(
                child: Container(
                  width: double.infinity,
                  height: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: AppTheme.levenderRed,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 8 * h),
                      const Text(
                        "Xarajatlar",
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: AppTheme.lightRed,
                        ),
                      ),
                      SizedBox(height: 6 * h),
                      const Text(
                        "164",
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: AppTheme.lightRed,
                        ),
                      ),
                      SizedBox(height: 6 * h),
                      const Text(
                        "\$",
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: AppTheme.lightRed,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 12 * w),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(
                    right: 16 * w,
                  ),
                  width: double.infinity,
                  height: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: AppTheme.levenderRed,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 8 * h),
                      const Text(
                        "Qarz",
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: AppTheme.lightRed,
                        ),
                      ),
                      SizedBox(height: 6 * h),
                      const Text(
                        "164",
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: AppTheme.lightRed,
                        ),
                      ),
                      SizedBox(height: 6 * h),
                      const Text(
                        "\$",
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: AppTheme.lightRed,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 24 * h),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 16 * w),
              const Text(
                "Oddiy sotuvlar",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Roboto',
                  color: AppTheme.magenta,
                ),
              ),
            ],
          ),
          SizedBox(height: 16 * h),
          Container(
            height: 130 * h,
            child: ListView.builder(
              itemCount: data.length,
              itemBuilder: (_, i) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const DressLoadScreen();
                        },
                      ),
                    );
                  },
                  child: Container(
                    height: 140,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: AppTheme.levender,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(width: 12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 12),
                            Text(
                              data[i].deressName,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Poppins',
                                color: AppTheme.magenta,
                                letterSpacing: 0.2,
                              ),
                            ),
                            SizedBox(height: 12),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  "assets/icons/person1.svg",
                                  width: 15,
                                  height: 15,
                                ),
                                SizedBox(width: 4),
                                Text(
                                  data[i].name,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Poppins',
                                    color: AppTheme.magenta,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 8),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  "assets/icons/calendar_castumer.svg",
                                  width: 15,
                                  height: 15,
                                ),
                                SizedBox(width: 4),
                                Text(
                                  dateTime.day.toString() +
                                      "." +
                                      dateTime.month.toString() +
                                      "." +
                                      dateTime.year.toString(),
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Roboto',
                                    color: AppTheme.magenta.withOpacity(0.7),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 6),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  "assets/icons/vector_price.svg",
                                  width: 15,
                                  height: 15,
                                ),
                                SizedBox(width: 4),
                                Text(
                                  data[i].price.toDouble().toString() + " ",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Poppins',
                                    color: AppTheme.magenta.withOpacity(0.7),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 16),
                          ],
                        ),
                        Spacer(),
                        Container(
                          width: 56 * w,
                          height: 56 * w,
                          margin: const EdgeInsets.only(
                            right: 4,
                            top: 4,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(56),
                            color: Colors.transparent,
                          ),
                          child: Image.asset(
                            data[i].image,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 24 * h),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 16 * w),
              const Text(
                "50 ga 50 sotuvlar",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Roboto',
                  color: AppTheme.magenta,
                ),
              ),
            ],
          ),
        ],
      ),
      //     }
      //     return const Center(
      //       child: CircularProgressIndicator(),
      //     );
      //   },
      // ),
    );
  }
}
