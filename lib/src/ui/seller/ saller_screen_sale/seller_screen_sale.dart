import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:holding_app/src/dialog/dialog.dart';
import 'package:holding_app/src/theme/app_theme.dart';

import '../../../dialog/saller_screen_sale_center_dialog/saller_screen_sale_center_dialog.dart';
import '../../../utils/utils_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SallerScreenSale extends StatefulWidget {
  const SallerScreenSale({Key? key}) : super(key: key);

  @override
  State<SallerScreenSale> createState() => _SallerSCState();
}

class _SallerSCState extends State<SallerScreenSale> {
  final TextEditingController _priceCon = TextEditingController();

  @override
  Widget build(BuildContext context) {
    DateTime dateTime = DateTime.now();
    double w = Utils.getWidth(context);
    double h = Utils.getHeight(context);
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        physics: NeverScrollableScrollPhysics(),
        children: [
          SizedBox(height: 24 * h),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: 16,
                ),
                width: 278 * w,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    width: 1,
                    color: AppTheme.black,
                  ),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 12 * w),
                    Expanded(child: Text("Ko’ylak  nomini tanlang")),
                    SvgPicture.asset(
                      "assets/icons/vector_top.svg",
                    ),
                    SizedBox(width: 12 * w),
                  ],
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    CenterDialog.showSaleDialog(context, " ");
                  },
                  child: Container(
                    margin: EdgeInsets.only(
                      right: 16 * w,
                    ),
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                    child: Center(
                      child: SvgPicture.asset("assets/icons/plus.svg"),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(
              top: 18 * h,
              left: 16 * w,
              right: 16 * w,
            ),
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: AppTheme.black,
              ),
              borderRadius: BorderRadius.circular(16),
            ),
            width: double.infinity,
            height: 70,
            child: Container(
              margin: EdgeInsets.only(
                top: 10 * h,
                left: 16 * w,
              ),
              child: Text(
                "Ko’ylak   haqida",
              ),
            ),
          ),

          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: 18 * h,
                  left: 16 * w,
                ),
                padding: EdgeInsets.only(
                  left: 16 * w,
                  top: 10 * h,
                ),
                width: 168 * w,
                height: 40 * h,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: AppTheme.black,
                  ),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Expanded(
                  child: TextField(
                    controller: _priceCon,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Berilgan summa',
                      hintStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Poppins',
                        color: AppTheme.black.withOpacity(0.5),
                      ),
                    ),
                  ),
                ),
              ),
              Spacer(),
              Text(
                'Qolgan:',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: AppTheme.black,
                ),
              ),
              Text(
                "\$ 10000",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Poppins',
                  color: AppTheme.black,
                ),
              ),
              SizedBox(
                width: 16 * w,
              ),
            ],
          ),
          SizedBox(height: 18 * h),
          // Row(
          //   children: [
          //     SizedBox(width: 16 * w),
          //     Expanded(
          //       child: Text("Berish sanasi:"),
          //     ),
          //     Container(
          //       width: 122,
          //       height: 46,
          //       decoration: BoxDecoration(
          //         borderRadius: BorderRadius.only(
          //           topLeft: Radius.circular(16),
          //           bottomLeft: Radius.circular(16),
          //         ),
          //         border: Border.all(
          //           width: 1,
          //           color: AppTheme.black,
          //         ),
          //       ),
          //       child: Text("12/02/2021"),
          //     ),
          //     Container(
          //       width: 74 * w,
          //       height: 46 * h,
          //       decoration: BoxDecoration(
          //         borderRadius: BorderRadius.only(
          //           topRight: Radius.circular(16),
          //           bottomRight: Radius.circular(16),
          //         ),
          //         color: AppTheme.black,
          //       ),
          //       child: Center(
          //         child: SvgPicture.asset(
          //           "assets/icons/calendar.svg",
          //           width: 24,
          //           height: 24,
          //           fit: BoxFit.cover,
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
          SizedBox(height: 16 * w),
          // Row(
          //   children: [
          //     SizedBox(
          //       width: 16 * w,
          //     ),
          //     Expanded(
          //       child: Text(
          //         "Telefonda sotildi",
          //         style: TextStyle(
          //           fontFamily: 'Poppins',
          //           fontWeight: FontWeight.w400,
          //           fontSize: 16,
          //           color: AppTheme.black,
          //         ),
          //       ),
          //     ),
          //     Container(
          //       width: 24 * w,
          //       height: 24 * h,
          //       decoration: BoxDecoration(
          //         color: Colors.transparent,
          //       ),
          //       child: Center(
          //         child: SvgPicture.asset(
          //           "asset/icons/tick_black.svg",
          //           width: 24,
          //           height: 24,
          //           fit: BoxFit.cover,
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
          SizedBox(height: 24 * w),
          // Row(
          //   children: [
          //     SizedBox(
          //       width: 16 * w,
          //     ),
          //     Expanded(
          //       child: Text(
          //         "Telefonda sotildi",
          //         style: TextStyle(
          //           fontFamily: 'Poppins',
          //           fontWeight: FontWeight.w400,
          //           fontSize: 16,
          //           color: AppTheme.black,
          //         ),
          //       ),
          //     ),
          //     Container(
          //       width: 24 * w,
          //       height: 24 * h,
          //       decoration: BoxDecoration(
          //         color: Colors.transparent,
          //       ),
          //       child: Center(
          //         child: SvgPicture.asset(
          //           "asset/icons/tick_black.svg",
          //           width: 24,
          //           height: 24,
          //           fit: BoxFit.cover,
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
          SizedBox(
            height: 24,
          ),
          Row(
            children: [
              SizedBox(
                width: 16 * w,
              ),
              Column(
                children: [
                  Text(
                    "Mijoz haqida",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: AppTheme.black,
                    ),
                  ),
                  SizedBox(height: 2),
                  Container(
                    width: double.infinity,
                    height: 1,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: AppTheme.black.withOpacity(0.5),
                      ),
                    ),
                  ),
                ],
              ),
              Spacer(),
              Container(
                width: 24 * w,
                height: 24 * h,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
                child: Center(
                  child: SvgPicture.asset(
                    "assets/icons/plus.svg",
                    width: 24,
                    height: 24,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 24),
          Container(
            width: 356 * w,
            height: 40,
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: AppTheme.black.withOpacity(0.7),
              ),
            ),
            child: Row(
              children: [
                Text("Salonlar ro’yxati"),
                Spacer(),
                SvgPicture.asset(
                  "assets/icons/vector_top.svg",
                ),
                SizedBox(width: 18),
              ],
            ),
          ),
          SizedBox(height: 24),
          Row(
            children: [
              SizedBox(width: 16),
              Text("Jo’natish sanasi:"),
              SizedBox(width: 36),
              Container(
                width: 122,
                height: 46,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    bottomLeft: Radius.circular(16),
                  ),
                  border: Border.all(
                    width: 1,
                    color: AppTheme.black,
                  ),
                ),
                child: Text("12/02/2021"),
              ),
              Container(
                width: 74 * w,
                height: 46 * h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                  ),
                  color: AppTheme.black,
                ),
                child: Center(
                  child: SvgPicture.asset(
                    "assets/icons/calendar.svg",
                    width: 24,
                    height: 24,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 24),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: AppTheme.black,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              SizedBox(
                width: 18,
              ),
              Text("Yetkazib berish shart emas"),
            ],
          ),
          SizedBox(height: 24),
          Container(
            width: 151 * w,
            height: 43 * h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: AppTheme.black,
            ),
            child: Center(
              child: Text(
                "Saqlash",
                style: TextStyle(color: AppTheme.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
