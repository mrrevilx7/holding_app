import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../theme/app_theme.dart';
import '../../utils/utils_screen.dart';

class CenterDeliverCloseDialog {
  static void showDeliveryCloseDialog(BuildContext context, index) {
    TextEditingController _aboutdressCon = TextEditingController();
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
                height: 275 * h,
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
                          "Nega bekor qilindi ? ",
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                            color: AppTheme.violetDark,
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
                                hintText: 'Bekor qilish sababini kiriting...',
                                hintStyle: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
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
                      SizedBox(height: 16 * h),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
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
                              "Saqlash",
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
