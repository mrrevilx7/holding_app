import 'dart:io';

import 'package:flutter/material.dart';
import '../../../dialog/warehouse_dialog/warehouse_dialog.dart';
import '../../../theme/app_theme.dart';
import '../../../utils/utils_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WarehouseScreen extends StatefulWidget {
  const WarehouseScreen({Key? key}) : super(key: key);

  @override
  State<WarehouseScreen> createState() => _WarehouseScreenState();
}

class _WarehouseScreenState extends State<WarehouseScreen> {
  TextEditingController _sonCon = TextEditingController();
  TextEditingController _productPriceCon = TextEditingController();
  TextEditingController _inforCon = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double w = Utils.getWidth(context);
    double h = Utils.getHeight(context);
    return Scaffold(
      backgroundColor: AppTheme.white,
      body: ListView(
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          SizedBox(height: 32 * h),
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
                    CenterWarehouseDialog.showWarehouseDialog(context, " ");
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
                      child: SvgPicture.asset("assets/icons/plus.svg"),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 24 * h),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: 16 * w,
                ),
                padding: EdgeInsets.symmetric(horizontal: 16 * w),
                width: 168 * w,
                height: 46,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: AppTheme.black,
                  ),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: TextField(
                  controller: _sonCon,
                  decoration: const InputDecoration(
                    hintText: "Son",
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
              Spacer(),
              Container(
                margin: const EdgeInsets.only(
                  right: 16,
                ),
                width: 168 * w,
                height: 46,
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
                      "Miqdori",
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
            ],
          ),
          SizedBox(
            height: 24 * h,
          ),
          Container(
            margin: EdgeInsets.only(
              left: 16 * w,
              right: 16 * w,
            ),
            padding: EdgeInsets.symmetric(horizontal: 16 * w),
            width: 168 * w,
            height: 46,
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: AppTheme.black,
              ),
              borderRadius: BorderRadius.circular(16),
            ),
            child: TextField(
              controller: _productPriceCon,
              decoration: const InputDecoration(
                hintText: "Maxsulot  narxi",
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
          Padding(
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
              top: 24,
            ),
            child: TextFormField(
              minLines: 2,
              maxLines: 5,
              keyboardType: TextInputType.multiline,
              controller: _inforCon,
              decoration: InputDecoration(
                  hintText: 'Qo’shimcha ma’lumotlar',
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
          SizedBox(height: 36 * h),
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
