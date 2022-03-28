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
                child: Column(
                  children: [
                    SizedBox(height: 12 * h),
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
                    Container(
                      margin: const EdgeInsets.only(
                        left: 16,
                        right: 16,
                        top: 18,
                      ),
                      child: TextFormField(
                        minLines: 2,
                        maxLines: 5,
                        keyboardType: TextInputType.multiline,
                        controller: _aboutdressCon,
                        decoration:  InputDecoration(
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
                  ],
                ),
              ),
            ),
          );
        });
  }
}
