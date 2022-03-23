import 'dart:io';

import 'package:flutter/material.dart';
import 'package:holding_app/src/bloc/Profille_bloc/Profile_bloc.dart';
import 'package:holding_app/src/model/api_models/Profile_api.dart';
import 'package:holding_app/src/model/information_model/information_model.dart';
import 'package:holding_app/src/theme/app_theme.dart';
import 'package:holding_app/src/ui/customer/news_screen/news_screen.dart';
import 'package:holding_app/src/widgets/grid_widget/grid_widget.dart';

import '../../../utils/utils_screen.dart';

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
    double w = Utils.getWidth(context);
    double h = Utils.getHeight(context);
    return Scaffold(
      backgroundColor: AppTheme.white,
      body:
          // StreamBuilder(
          //   stream: profileBloc.getCustomers,
          //   builder: (BuildContext context, AsyncSnapshot<ProfileModel> snapshot) {
          //     if (snapshot.hasData) {
          //       List<ProfileResult> porfile = snapshot.data!.results;
          //
          //       return
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
              Container(
                margin: EdgeInsets.only(
                  left: 24 * w,
                ),
                width: 162 * w,
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: AppTheme.levender,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 18 * h),
                    const Text(
                      "Ko’ylak soni",
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        color: AppTheme.magentaDark,
                      ),
                    ),
                    SizedBox(height: 18 * h),
                    const Text(
                      "3",
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: AppTheme.magentaDark,
                      ),
                    ),
                    SizedBox(height: 18 * h),
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
              const Spacer(),
              Container(
                margin: EdgeInsets.only(
                  right: 24 * w,
                ),
                width: 162 * w,
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: AppTheme.levenderRed,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 18 * h),
                    const Text(
                      "Xarajatlar",
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        color: AppTheme.lightRed,
                      ),
                    ),
                    SizedBox(height: 18 * h),
                    const Text(
                      "164",
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: AppTheme.lightRed,
                      ),
                    ),
                    SizedBox(height: 18 * h),
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
            ],
          ),
          SizedBox(height: 24 * h),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 16 * w),
              const Text(
                "Maxsulotlar haqida:",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Roboto',
                  color: AppTheme.magenta,
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(
              top: 16 * h,
            ),
            height: 312,
            child: PageView.builder(
              controller: _profileCon,
              itemCount: (data.length + _inforCount - 1) ~/ _inforCount,
              scrollDirection: Axis.horizontal,
              onPageChanged: (_index) {
                setState(() {
                  _selectedIndex = _index;
                });
              },
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Row(
                      children: [
                        const SizedBox(width: 24),
                        Expanded(
                          child: InforGridWidget(
                            onTap: () {},
                            data: data[index * _inforCount],
                          ),
                        ),
                        const SizedBox(width: 18),
                        Expanded(
                          child: index * _inforCount + 1 >= data.length
                              ? Container()
                              : InforGridWidget(
                                  onTap: () {},
                                  data: data[index * _inforCount + 1],
                                ),
                        ),
                        const SizedBox(width: 24),
                      ],
                    ),
                    const SizedBox(height: 18),
                    Row(
                      children: [
                        const SizedBox(width: 24),
                        Expanded(
                          child: index * _inforCount + 2 >= data.length
                              ? Container()
                              : InforGridWidget(
                                  onTap: () {},
                                  data: data[index * _inforCount + 2],
                                ),
                        ),
                        const SizedBox(width: 18),
                        Expanded(
                          child: index * _inforCount + 3 >= data.length
                              ? Container()
                              : InforGridWidget(
                                  onTap: () {},
                                  data: data[index * _inforCount + 3],
                                ),
                        ),
                        const SizedBox(width: 24),
                      ],
                    ),
                  ],
                );
              },
            ),
          ),
          Container(
            height: 40,
            margin: EdgeInsets.only(bottom: Platform.isIOS ? 32 : 24),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.arrow_back_ios,
                  size: 18,
                  color: AppTheme.neturalBlue,
                ),
                const SizedBox(width: 6),
                AnimatedContainer(
                  duration: const Duration(milliseconds: 270),
                  height: _selectedIndex == 0 ? 20 : 18,
                  width: _selectedIndex == 0 ? 20 : 18,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(_selectedIndex == 0 ? 20 : 18),
                    color: _selectedIndex == 0
                        ? AppTheme.neturalBlue
                        : AppTheme.gray,
                  ),
                  child: Center(
                    child: Text(
                      "1",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: _selectedIndex == 0
                            ? AppTheme.white
                            : AppTheme.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 6),
                AnimatedContainer(
                  height: _selectedIndex == 1 ? 20 : 18,
                  width: _selectedIndex == 1 ? 20 : 18,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(_selectedIndex == 1 ? 20 : 18),
                    color: _selectedIndex == 1
                        ? AppTheme.neturalBlue
                        : AppTheme.gray,
                  ),
                  duration: const Duration(milliseconds: 270),
                  child: Center(
                    child: Text(
                      "2",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: _selectedIndex == 1
                            ? AppTheme.white
                            : AppTheme.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 6),
                AnimatedContainer(
                  height: _selectedIndex == 2 ? 20 : 18,
                  width: _selectedIndex == 2 ? 20 : 18,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(_selectedIndex == 2 ? 20 : 18),
                    color: _selectedIndex == 2
                        ? AppTheme.neturalBlue
                        : AppTheme.gray,
                  ),
                  duration: const Duration(milliseconds: 270),
                  child: Center(
                    child: Text(
                      "3",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: _selectedIndex == 2
                            ? AppTheme.white
                            : AppTheme.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 6),
                AnimatedContainer(
                  height: _selectedIndex == 3 ? 20 : 18,
                  width: _selectedIndex == 3 ? 20 : 18,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(_selectedIndex == 3 ? 20 : 18),
                    color: _selectedIndex == 3
                        ? AppTheme.neturalBlue
                        : AppTheme.gray,
                  ),
                  duration: const Duration(milliseconds: 270),
                  child: Center(
                    child: Text(
                      "4",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: _selectedIndex == 3
                            ? AppTheme.white
                            : AppTheme.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 6),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                  color: AppTheme.neturalBlue,
                ),
              ],
            ),
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
