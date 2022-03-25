import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:holding_app/src/theme/app_theme.dart';

import '../../utils/utils_screen.dart';

class CenterAddSalonDialog {
  static void showFivetyDialog(BuildContext context, index) {
    double w = Utils.getWidth(context);
    double h = Utils.getHeight(context);
    TextEditingController _userIdCon = TextEditingController();
    TextEditingController _salonNameCon = TextEditingController();
    TextEditingController _salonAdressCon = TextEditingController();
    TextEditingController _phoneCon = TextEditingController();
    TextEditingController _salonerNameCon = TextEditingController();

    showDialog(
        context: context,
        barrierColor: Colors.black.withOpacity(0.7),
        builder: (context) {
          return Center(
            child: SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.only(
                  left: 16,
                  right: 16,
                ),
                width: double.infinity,
                height: 520 * h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: Colors.white,
                ),
                child: Material(
                  borderRadius: BorderRadius.circular(24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 18),
                      const Center(
                        child: Text(
                          "Salon kiritish",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            fontFamily: 'Poppins',
                            color: AppTheme.violetDark,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: 16 * w,
                          right: 16 * w,
                          top: 8 * h,
                        ),
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(horizontal: 16 * w),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                            width: 1,
                            color: AppTheme.black,
                          ),
                        ),
                        child: TextField(
                          controller: _userIdCon,
                          decoration: InputDecoration(
                            hintText: "User ID",
                            hintStyle: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: AppTheme.black.withOpacity(0.5),
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: 16 * w,
                          right: 16 * w,
                          top: 8 * h,
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 16 * w),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                            width: 1,
                            color: AppTheme.black,
                          ),
                        ),
                        child: TextField(
                          controller: _salonNameCon,
                          decoration: InputDecoration(
                            hintText: "Salon nomi",
                            hintStyle: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: AppTheme.black.withOpacity(0.5),
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: 16 * w,
                          right: 16 * w,
                          top: 8 * h,
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 16 * w),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                            width: 1,
                            color: AppTheme.black,
                          ),
                        ),
                        child: TextField(
                          controller: _salonAdressCon,
                          decoration: InputDecoration(
                            hintText: "Salon manzili",
                            hintStyle: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: AppTheme.black.withOpacity(0.5),
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                          top: 16,
                          left: 16,
                          right: 16,
                        ),
                        width: double.infinity,
                        height: 56,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                            width: 1,
                            color: AppTheme.black,
                          ),
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: 16),
                            const Text(
                              "+998 ",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                color: AppTheme.black,
                              ),
                            ),
                            Expanded(
                              child: TextField(
                                autofocus: true,
                                controller: _phoneCon,
                                keyboardType: TextInputType.phone,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  fontFamily: 'Poppins',
                                  color: AppTheme.black,
                                ),
                                maxLength: 9,
                                decoration: const InputDecoration(
                                  counterText: "",
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: 16 * w,
                          right: 16 * w,
                          top: 8 * h,
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 16 * w),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                            width: 1,
                            color: AppTheme.black,
                          ),
                        ),
                        child: TextField(
                          controller: _salonerNameCon,
                          decoration: InputDecoration(
                            hintText: "Salonchi  ismi",
                            hintStyle: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: AppTheme.black.withOpacity(0.5),
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      SizedBox(height: 32 * h),
                      Container(
                        width: 152 * w,
                        height: 43 * h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: AppTheme.black,
                        ),
                        child: const Center(
                          child: Text(
                            "Kiritish",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              color: AppTheme.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
