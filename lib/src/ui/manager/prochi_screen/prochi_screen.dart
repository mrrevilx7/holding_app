import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:holding_app/src/theme/app_theme.dart';

import '../../../dialog/manager_center_dialog/manager_center_dialog.dart';
import '../../../utils/utils_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProchiScreen extends StatefulWidget {
  const ProchiScreen({Key? key}) : super(key: key);

  @override
  State<ProchiScreen> createState() => _ProchiScreenState();
}

class _ProchiScreenState extends State<ProchiScreen> {
  final TextEditingController _kelinPriceCon = TextEditingController();
  TextEditingController _sonCon = TextEditingController();
  TextEditingController _productPriceCon = TextEditingController();
  TextEditingController _inforCon = TextEditingController();

  bool _worked = false;
  bool _clear = false;

  @override
  Widget build(BuildContext context) {
    double w = Utils.getWidth(context);
    double h = Utils.getWidth(context);
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(height: 24 * h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 16 * w),
              const Text(
                "Balans:",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  color: AppTheme.black,
                ),
              ),
              const Spacer(),
              const Text(
                "\$ 540",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  color: AppTheme.black,
                ),
              ),
              SizedBox(width: 36 * w),
              GestureDetector(
                onTap: () {
                  CenterManagerDialog.showManagerDialog(context, " ");
                },
                child: SvgPicture.asset(
                  "assets/icons/circle_plus.svg",
                  height: 24 * w,
                  width: 24 * w,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 16 * w),
            ],
          ),
          SizedBox(height: 18 * h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 16 * w),
              Expanded(
                child: const Text(
                  "Qoldi:",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                    fontSize: 20,
                    color: AppTheme.black,
                  ),
                ),
              ),
              const Text(
                "\$ 300",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  color: AppTheme.black,
                ),
              ),
              SizedBox(width: 76 * w),
            ],
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
                hintText: "Xaraajt  nomi",
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
          SizedBox(height: 24),
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
                hintText: "Xaraajt  narxi",
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
              maxLines: 4,
              keyboardType: TextInputType.multiline,
              controller: _inforCon,
              decoration: InputDecoration(
                  hintText: 'Qayerdan olingan?',
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
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    _worked = true;
                    _clear = false;
                  });
                },
                child: _worked
                    ? Container(
                  margin: EdgeInsets.only(
                    left: 16 * w,
                  ),
                  width: 190 * w,
                  height: 40 * h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: AppTheme.black,
                  ),
                  child: const Center(
                    child: Text(
                      "Ishlatish",
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        color: AppTheme.white,
                      ),
                    ),
                  ),
                )
                    : Container(
                  margin: EdgeInsets.only(
                    left: 16 * w,
                  ),
                  width: 190 * w,
                  height: 40 * h,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 3,
                      color: AppTheme.red,
                    ),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Center(
                    child: Text(
                      "Ishlatish",
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        color: _worked ? AppTheme.white : AppTheme.black,
                      ),
                    ),
                  ),
                ),
              ),
              const Spacer(),
              GestureDetector(
                  onTap: () {
                    setState(() {
                      _worked = false;
                      _clear = true;
                    });
                  },
                  child: _clear
                      ? Container(
                    margin: EdgeInsets.only(
                      right: 16 * w,
                    ),
                    width: 134 * w,
                    height: 40 * h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: AppTheme.black,
                    ),
                    child: Center(
                      child: Text(
                        "Tozalash",
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          color: _clear ? AppTheme.white : AppTheme.black,
                        ),
                      ),
                    ),
                  )
                      : Container(
                    margin: EdgeInsets.only(
                      right: 16 * w,
                    ),
                    width: 134 * w,
                    height: 40 * h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        width: 3,
                        color: AppTheme.red,
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        "Tozalash",
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          color: AppTheme.black,
                        ),
                      ),
                    ),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
