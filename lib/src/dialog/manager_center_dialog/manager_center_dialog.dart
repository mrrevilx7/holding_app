import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../theme/app_theme.dart';
import '../../utils/utils_screen.dart';

class CenterManagerDialog {
  static void showManagerDialog(BuildContext context, index) {
    TextEditingController _aboutdressCon = TextEditingController();
    TextEditingController _priceCon = TextEditingController();
    double w = Utils.getWidth(context);
    double h = Utils.getHeight(context);
    showDialog(
        context: context,
        barrierColor: Colors.black.withOpacity(0.7),
        builder: (context) {
          return Center(
            child: SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.only(
                  left: 16 * w,
                  right: 16 * h,
                ),
                width: double.infinity,
                height: 336 * h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: Colors.white,
                ),
                child: Material(
                  borderRadius: BorderRadius.circular(24),
                  child: Column(
                    children: [
                      SizedBox(height: 24 * h),
                      const Center(
                        child: Text(
                          "Balansni to’ldirish",
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                            color: AppTheme.black,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16,
                          right: 16,
                          top: 18,
                        ),
                        child: Expanded(
                          child: TextFormField(
                            maxLines: 3,
                            keyboardType: TextInputType.multiline,
                            controller: _aboutdressCon,
                            decoration: InputDecoration(
                                hintText: 'Qayerdan olindi pul ?',
                                hintStyle: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: AppTheme.black.withOpacity(0.4),
                                ),
                                enabledBorder: const OutlineInputBorder(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(16),
                                    bottomRight: Radius.circular(16),
                                    bottomLeft: Radius.circular(16),
                                  ),
                                  borderSide: BorderSide(color: Colors.black),
                                ),
                                focusedBorder: const OutlineInputBorder(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(16),
                                    bottomRight: Radius.circular(16),
                                    bottomLeft: Radius.circular(16),
                                  ),
                                  borderSide: BorderSide(color: Colors.black),
                                )),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: 16 * w,
                          right: 16 * w,
                          top: 14 * h,
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 16 * w),
                        width: double.infinity,
                        height: 46,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: AppTheme.black,
                          ),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: TextField(
                          controller: _priceCon,
                          decoration: const InputDecoration(
                            hintText: "Pul miqdori",
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
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          margin: EdgeInsets.only( top: 16 * h),
                          width: 151 * w,
                          height: 43 * h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: AppTheme.black,
                          ),
                          child: Center(
                            child: Text(
                              "Qo’shish",
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
                ),
              ),
            ),
          );
        });
  }
}
