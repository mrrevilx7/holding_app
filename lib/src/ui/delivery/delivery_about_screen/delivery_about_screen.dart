import 'dart:io';

import 'package:flutter/material.dart';

import '../../../dialog/delivery_center_dialog/delivery_center_dialog.dart';
import '../../../dialog/delivery_center_dialog/delivery_close_center_dialog.dart';
import '../../../theme/app_theme.dart';
import '../../../utils/utils_screen.dart';

class DeliveryAboutDressScreen extends StatefulWidget {
  const DeliveryAboutDressScreen({Key? key}) : super(key: key);

  @override
  State<DeliveryAboutDressScreen> createState() =>
      _DeliveryAboutDressScreenState();
}

class _DeliveryAboutDressScreenState extends State<DeliveryAboutDressScreen> {
  TextEditingController _aboutdressCon = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double w = Utils.getWidth(context);
    double h = Utils.getWidth(context);
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                SizedBox(height: 40 * h),
                Row(
                  children: [
                    SizedBox(width: 16 * w),
                    const Expanded(
                      child: Text(
                        "Sotivchi",
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
                Container(
                  margin: EdgeInsets.only(
                    left: 16 * w,
                    top: 40 * h,
                    right: 16 * h,
                  ),
                  width: double.infinity,
                  height: 272,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.transparent,
                    image: const DecorationImage(
                      image: AssetImage(
                        'assets/images/dress_lady.jpg',
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(height: 28 * h),
                Row(
                  children: [
                    SizedBox(width: 16 * w),
                    Expanded(
                      child: Text(
                        "Ko???ylak nomi",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: AppTheme.black.withOpacity(0.5),
                        ),
                      ),
                    ),
                    Text(
                      "Paris",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                        color: AppTheme.black,
                        letterSpacing: 0.2,
                      ),
                    ),
                    SizedBox(width: 16 * w),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 16,
                    top: 1,
                    right: 16,
                  ),
                  height: 1,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 0.8,
                      color: AppTheme.black.withOpacity(0.4),
                    ),
                  ),
                ),
                SizedBox(height: 24 * h),
                Row(
                  children: [
                    SizedBox(width: 16 * w),
                    Expanded(
                      child: Text(
                        "Qolgan summa summa",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: AppTheme.black.withOpacity(0.5),
                        ),
                      ),
                    ),
                    Text(
                      "5.000",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                        color: AppTheme.black,
                        letterSpacing: 0.2,
                      ),
                    ),
                    SizedBox(width: 16 * w),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 16,
                    top: 1,
                    right: 16,
                  ),
                  height: 1,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 0.8,
                      color: AppTheme.black.withOpacity(0.4),
                    ),
                  ),
                ),
                SizedBox(height: 24 * h),
                Row(
                  children: [
                    SizedBox(width: 16 * w),
                    Expanded(
                      child: Text(
                        "Salon nomi",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: AppTheme.black.withOpacity(0.5),
                        ),
                      ),
                    ),
                    Text(
                      "Olaaa",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                        color: AppTheme.black,
                        letterSpacing: 0.2,
                      ),
                    ),
                    SizedBox(width: 16 * w),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 16,
                    top: 1,
                    right: 16,
                  ),
                  height: 1,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 0.8,
                      color: AppTheme.black.withOpacity(0.4),
                    ),
                  ),
                ),
                SizedBox(height: 24 * h),
                Row(
                  children: [
                    SizedBox(width: 16 * w),
                    Expanded(
                      child: Text(
                        "Salon manzili",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: AppTheme.black.withOpacity(0.5),
                        ),
                      ),
                    ),
                    Text(
                      "24 kv-dom",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                        color: AppTheme.black,
                        letterSpacing: 0.2,
                      ),
                    ),
                    SizedBox(width: 16 * w),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 16,
                    top: 1,
                    right: 16,
                  ),
                  height: 1,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 0.8,
                      color: AppTheme.black.withOpacity(0.4),
                    ),
                  ),
                ),
                SizedBox(height: 24 * h),
                Row(
                  children: [
                    SizedBox(width: 16 * w),
                    Expanded(
                      child: Text(
                        "Jo???natilish sanasi",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: AppTheme.black.withOpacity(0.5),
                        ),
                      ),
                    ),
                    Text(
                      "12.02.2022",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                        color: AppTheme.black,
                        letterSpacing: 0.2,
                      ),
                    ),
                    SizedBox(width: 16 * w),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 16,
                    top: 1,
                    right: 16,
                  ),
                  height: 1,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 0.8,
                      color: AppTheme.black.withOpacity(0.4),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    left: 16,
                    right: 16,
                    top: 18,
                  ),
                  child: TextFormField(
                    maxLines: 3,
                    keyboardType: TextInputType.multiline,
                    controller: _aboutdressCon,
                    decoration: const InputDecoration(
                        hintText: 'Ko???ylak haqidagi malumotlar',
                        hintStyle: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: AppTheme.gray,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(16),
                            bottomRight: Radius.circular(16),
                            bottomLeft: Radius.circular(16),
                          ),
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(16),
                            bottomRight: Radius.circular(16),
                            bottomLeft: Radius.circular(16),
                          ),
                          borderSide: BorderSide(color: Colors.black),
                        )),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 24 * h),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  CenterDeliverCloseDialog.showDeliveryCloseDialog(context, " ");
                },
                child: Container(
                  margin: EdgeInsets.only(
                    left: 16,
                      bottom: Platform.isIOS ? 32 : 24,
                    ),
                    width: 151 * w,
                    height: 43 * h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: AppTheme.red,
                  ),
                  child: Center(
                    child: Text(
                      "Bekor qilindi",
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        color: AppTheme.white,
                      ),
                    ),
                  ),
                ),
              ),
              Spacer(),
              GestureDetector(
                onTap: () {
                  CenterDeliverDialog.showDeliveryDialog(context, " ");
                },
                child: Container(
                  margin: EdgeInsets.only(
                    right: 16,
                    bottom: Platform.isIOS ? 32 : 24,
                  ),
                  width: 151 * w,
                  height: 43 * h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: AppTheme.lightGreen,
                  ),
                  child: Center(
                    child: Text(
                      "Yetkazildi",
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        color: AppTheme.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
