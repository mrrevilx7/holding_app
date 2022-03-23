import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:holding_app/src/theme/app_theme.dart';

import '../../utils/utils_screen.dart';

class CenterDialog {
  static void showSaleDialog(BuildContext context, index) {
    double w = Utils.getWidth(context);
    double h = Utils.getHeight(context);
    TextEditingController _dressNameCon = TextEditingController();
    TextEditingController _dressImageCon = TextEditingController();
    TextEditingController _dressPriceCon = TextEditingController();
    showDialog(
        context: context,
        builder: (context) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 18),
              Center(
                child: Text(
                  "Ko’ylak kiritish oynasi",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    color: AppTheme.black,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 16 * w, right: 16 * w),
                width: double.infinity,
                height: 56 * h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    width: 1,
                    color: AppTheme.black,
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _dressNameCon,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Ko’ylak  nomi',
                          hintStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Poppins',
                            color: AppTheme.black.withOpacity(0.5),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      left: 16 * w,
                      top: 16 * h,
                    ),
                    width: 288 * w,
                    height: 56 * h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                      ),
                      border: Border.all(
                        width: 1,
                        color: AppTheme.black,
                      ),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            controller: _dressNameCon,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Ko’ylak  rasmi',
                              hintStyle: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Poppins',
                                color: AppTheme.black.withOpacity(0.5),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      right: 16 * w,
                      top: 16 * h,
                    ),
                    width: 82 * w,
                    height: 56 * h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(16),
                        topRight: Radius.circular(16),
                      ),
                      color: AppTheme.black,
                    ),
                    child: Center(
                      child: Text(
                        "Files",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          color: AppTheme.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 16 * w, right: 16 * w),
                width: double.infinity,
                height: 56 * h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    width: 1,
                    color: AppTheme.black,
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _dressNameCon,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Ko’ylak narxi',
                          hintStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Poppins',
                            color: AppTheme.black.withOpacity(0.5),
                          ),
                        ),
                      ),
                    ),
                  ],
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
                child: Center(
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
          );
        });
  }
}
