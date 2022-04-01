import 'package:flutter/material.dart';
import 'package:holding_app/src/ui/delivery/delivery_about_screen/delivery_about_screen.dart';

import '../../model/delivery_screen_model/delivery_screen_model.dart';
import '../../theme/app_theme.dart';
import '../../utils/utils_screen.dart';
import '../seller/saller_screen_buying/saller_screen_buying.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DeliveryScreen extends StatefulWidget {
  const DeliveryScreen({Key? key}) : super(key: key);

  @override
  State<DeliveryScreen> createState() => _DeliveryScreenState();
}

class _DeliveryScreenState extends State<DeliveryScreen> {
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
    DateTime dateTime = DateTime.now();
    double w = Utils.getWidth(context);
    double h = Utils.getHeight(context);
    return Scaffold(
      backgroundColor: AppTheme.white,
      body: Column(
        children: [
          SizedBox(height: 68 * h),
          Row(
            children: [
              SizedBox(width: 16 * w),
              const Expanded(
                child: Text(
                  "Yetkazib beruvchi",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                    color: AppTheme.black,
                  ),
                ),
              ),
              Container(
                width: 32 * w,
                height: 32 * w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32),
                  color: Colors.transparent,
                ),
                child: Center(
                  child: Image.asset(
                    "assets/images/mexico_girl.png",
                    width: 32,
                    height: 32,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 16 * w),
            ],
          ),
          Expanded(
            child: ListView.builder(
                itemCount: deliver.length,
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
                            SizedBox(height: 8),
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
                                SizedBox(width: 12),
                                SvgPicture.asset(
                                  "assets/icons/vector_anti.svg",
                                  width: 10 * w,
                                  height: 10 * w,
                                ),
                                SizedBox(width: 12),
                                Text(
                                  deliver[i].stayLoc,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Roboto',
                                    color: AppTheme.Yellow,
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
                                  return const DeliveryAboutDressScreen();
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
          ),
        ],
      ),
    );
  }
}
