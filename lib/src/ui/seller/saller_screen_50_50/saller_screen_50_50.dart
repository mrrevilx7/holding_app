import 'dart:io';

import 'package:flutter/material.dart';
import 'package:holding_app/src/dialog/sallaer_screen_add_salon/sallaer_screen_add_salon.dart';
import 'package:holding_app/src/theme/app_theme.dart';

import '../../../dialog/saller_screen_sale_center_dialog/saller_screen_sale_center_dialog.dart';
import '../../../utils/utils_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FivetyScreen extends StatefulWidget {
  const FivetyScreen({Key? key}) : super(key: key);

  @override
  State<FivetyScreen> createState() => _FivetyScreenState();
}

class _FivetyScreenState extends State<FivetyScreen> {
  final TextEditingController _priceCon = TextEditingController();
  final TextEditingController _aboutdressCon = TextEditingController();
  final TextEditingController _kelinNameCon = TextEditingController();
  final TextEditingController _kelinPriceCon = TextEditingController();
  final TextEditingController _salonePriceCon = TextEditingController();

  @override
  Widget build(BuildContext context) {
    DateTime dateTime = DateTime.now();
    double w = Utils.getWidth(context);
    double h = Utils.getHeight(context);
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(height: 24 * h),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(
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
                    const Expanded(
                        child: Text(
                      "Ko’ylak  nomini tanlang",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: AppTheme.gray,
                      ),
                    )),
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
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        "assets/icons/plus.svg",
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
              top: 18,
            ),
            child: TextFormField(
              minLines: 2,
              maxLines: 5,
              keyboardType: TextInputType.multiline,
              controller: _aboutdressCon,
              decoration: InputDecoration(
                  hintText: 'Ko’ylak   haqida',
                  hintStyle: const TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: AppTheme.gray,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: const BorderSide(color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: const BorderSide(color: Colors.black),
                  )),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              left: 16,
              right: 16,
              top: 18,
            ),
            padding: EdgeInsets.only(
              left: 14 * w,
            ),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                width: 1,
                color: AppTheme.black,
              ),
            ),
            child: TextField(
              controller: _kelinNameCon,
              decoration: const InputDecoration(
                hintText: "Kelin ismi",
                hintStyle: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: AppTheme.gray,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              left: 16,
              right: 16,
              top: 18,
            ),
            padding: EdgeInsets.only(
              left: 14 * w,
            ),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                width: 1,
                color: AppTheme.black,
              ),
            ),
            child: TextField(
              controller: _kelinPriceCon,
              decoration: const InputDecoration(
                hintText: "Kelin  bergan pul",
                hintStyle: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: AppTheme.gray,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: 16 * w,
                  top: 18 * h,
                ),
                padding: EdgeInsets.only(
                  left: 14 * w,
                ),
                width: 168 * w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    width: 1,
                    color: AppTheme.black,
                  ),
                ),
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: _priceCon,
                  decoration: const InputDecoration(
                    hintText: "Berilgan summa",
                    hintStyle: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: AppTheme.gray,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              const Spacer(),
              Container(
                margin: EdgeInsets.only(
                  top: 18 * w,
                ),
                child: const Text(
                  'Qolgan:',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: AppTheme.black,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 18 * w,
                  right: 16 * w,
                ),
                child: const Text(
                  " \$ 10000",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Poppins',
                    color: AppTheme.black,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 18 * h),
          Row(
            children: [
              SizedBox(width: 16 * w),
              const Text(
                "To’y sanasi:",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: AppTheme.black,
                ),
              ),
              const Spacer(),
              Container(
                width: 122 * w,
                height: 46 * h,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    bottomLeft: Radius.circular(16),
                  ),
                  border: Border.all(
                    width: 1,
                    color: AppTheme.black,
                  ),
                ),
                child:  Center(
                    child: Text(
                  "12/02/2021",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    color: AppTheme.black.withOpacity(0.5),
                  ),
                )),
              ),
              Container(
                width: 74 * w,
                height: 46 * h,
                margin: EdgeInsets.only(
                  right: 16 * w,
                ),
                decoration: const BoxDecoration(
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
          SizedBox(height: 16 * w),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 16 * w,
              ),
              const Text(
                "Pasport berildi:",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: AppTheme.black,
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  right: 24 * w,
                  top: 18 * h,
                  left: 12 * w,
                ),
                width: 24 * w,
                height: 24 * h,
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                ),
                child: SvgPicture.asset(
                  "assets/icons/tick_black.svg",
                  width: 24,
                  height: 24,
                  fit: BoxFit.cover,
                ),
              ),
              const Text(
                "Telefonda sotildi",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: AppTheme.black,
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  right: 36 * w,
                  top: 18 * h,
                  left: 12 * w,
                ),
                width: 24 * w,
                height: 24 * h,
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                ),
                child: SvgPicture.asset(
                  "assets/icons/tick_black.svg",
                  width: 24,
                  height: 24,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Mijoz haqida",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: AppTheme.black,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        right: 56 * w,
                      ),
                      width: double.infinity,
                      height: 1,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: AppTheme.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  CenterAddSalonDialog.showFivetyDialog(context, " ");
                },
                child: Container(
                  margin: const EdgeInsets.only(
                    right: 36,
                  ),
                  width: 24 * w,
                  height: 24 * h,
                  decoration: const BoxDecoration(
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
              ),
            ],
          ),
          const SizedBox(height: 24),
          Container(
            margin: EdgeInsets.only(
              left: 16 * w,
              right: 16 * w,
            ),
            width: double.infinity,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                width: 1,
                color: AppTheme.black.withOpacity(0.7),
              ),
            ),
            child: Row(
              children: [
                const SizedBox(width: 14),
                const Text(
                  "Salonlar ro’yxati",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: AppTheme.gray,
                  ),
                ),
                const Spacer(),
                SvgPicture.asset(
                  "assets/icons/vector_top.svg",
                ),
                const SizedBox(width: 18),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              left: 16,
              right: 16,
              top: 18,
            ),
            padding: EdgeInsets.only(
              left: 14 * w,
            ),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                width: 1,
                color: AppTheme.black,
              ),
            ),
            child: TextField(
              controller: _salonePriceCon,
              decoration: const InputDecoration(
                hintText: "Salon bergan pul",
                hintStyle: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: AppTheme.gray,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
          const SizedBox(height: 24),
          Row(
            children: [
              const SizedBox(width: 16),
              const Text(
                "Jo’natish sanasi:",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: AppTheme.black,
                ),
              ),
              const Spacer(),
              Container(
                width: 122 * w,
                height: 46 * h,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    bottomLeft: Radius.circular(16),
                  ),
                  border: Border.all(
                    width: 1,
                    color: AppTheme.black,
                  ),
                ),
                child: Center(
                    child: Text(
                  "12/02/2021",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    color: AppTheme.black.withOpacity(0.5),
                  ),
                )),
              ),
              Container(
                width: 74 * w,
                height: 46 * h,
                margin: EdgeInsets.only(
                  right: 16 * w,
                ),
                decoration: const BoxDecoration(
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
          const SizedBox(height: 24),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: AppTheme.black,
                  ),
                  borderRadius: BorderRadius.circular(3),
                ),
              ),
              const SizedBox(
                width: 18,
              ),
              const Text(
                "Yetkazib berish shart emas",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: AppTheme.black,
                ),
              ),
            ],
          ),
          Center(
            child: Container(
              margin: EdgeInsets.only(
                top: 36 * h,
                bottom: Platform.isIOS ? 32 : 24,
              ),
              width: 200 * w,
              height: 56 * h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: AppTheme.black,
              ),
              child: const Center(
                child: const Text(
                  "Saqlash",
                  style: const TextStyle(color: AppTheme.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
// Container(
//   margin: EdgeInsets.only(left: 16, right: 16),
//   width: double.infinity,
//   height: 57,
//   decoration: BoxDecoration(
//     borderRadius: BorderRadius.circular(16),
//     border: Border.all(
//       width: 1,
//       color: AppTheme.black,
//     ),
//   ),
//   child: Text("Kelin ismi"),
// ),
// Container(
//   margin: EdgeInsets.only(left: 16, right: 16),
//   width: double.infinity,
//   height: 57,
//   decoration: BoxDecoration(
//     borderRadius: BorderRadius.circular(16),
//     border: Border.all(
//       width: 1,
//       color: AppTheme.black,
//     ),
//   ),
//   child: Text("Kelin  bergan pul"),
// ),
// SizedBox(height: 24),
// Container(
//   width: 356 * w,
//   height: 40,
//   decoration: BoxDecoration(
//     border: Border.all(
//       width: 1,
//       color: AppTheme.black.withOpacity(0.7),
//     ),
//   ),
//   child: Row(
//     children: [
//       Text("Salon bergan pul"),
//     ],
//   ),
// ),
