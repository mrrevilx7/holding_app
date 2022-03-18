import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:holding_app/src/model/information_model/information_model.dart';
import 'package:holding_app/src/theme/app_theme.dart';
import 'package:holding_app/src/ui/customer/news_screen/news_screen.dart';

import '../../../utils/utils_screen.dart';
import '../../../widgets/grid_widget/grid_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final int _inforCount = 2;

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
  ];

  @override
  Widget build(BuildContext context) {
    double w = Utils.getWidth(context);
    double h = Utils.getHeight(context);
    return Scaffold(
      backgroundColor: AppTheme.white,
      body: ListView(
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
                Column(
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
                const SizedBox(width: 16),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      child: Container(
                        margin: const EdgeInsets.only(
                          left: 18,
                          right: 36,
                        ),
                        width: 32 * h,
                        height: 32 * h,
                        decoration: const BoxDecoration(
                          color: Colors.transparent,
                        ),
                        child: Center(
                          child: SvgPicture.asset("assets/icons/filter.svg"),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 28 * h),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    margin: EdgeInsets.only(
                      left: 36 * w,
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
                          offset: const Offset(0, 1), // changes position of shadow
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
                  margin: EdgeInsets.only(right: 36 * w),
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
                        offset: const Offset(0, 1), // changes position of shadow
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
              SizedBox(width: 28 * w),
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
                margin: const EdgeInsets.only(
                  left: 36 ,
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
              const SizedBox(width: 24),
              Container(
                margin: const EdgeInsets.only(
                  right: 36,
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
              SizedBox(width: 28 * w),
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
          ListView.builder(
            itemCount: (data.length + _inforCount - 1) ~/ _inforCount,
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            physics:  const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Row(
                    children: [
                      const SizedBox(width: 36),
                      Expanded(
                        child: InforGridWidget(
                          data: data[index * _inforCount],
                          onTap: () {},
                        ),
                      ),
                      const SizedBox(width: 24),
                      Expanded(
                        child: index * _inforCount + 1 >= data.length
                            ? Container()
                            : InforGridWidget(
                                data: data[index * _inforCount + 1],
                                onTap: () {},
                              ),
                      ),
                      const SizedBox(width: 36),
                    ],
                  ),
                  const SizedBox(height: 16),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
