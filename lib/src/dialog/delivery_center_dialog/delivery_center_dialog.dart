import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../theme/app_theme.dart';
import '../../utils/utils_screen.dart';

class CenterDeliverDialog {
  static void showDeliveryDialog(BuildContext context, index) {
    double w = Utils.getWidth(context);
    double h = Utils.getHeight(context);
    showDialog(
        context: context,
        barrierColor: Colors.black.withOpacity(0.7),
        builder: (context) {
          return Center(
            child: Container(
              margin:  EdgeInsets.only(
                left: 16 * w,
                right: 16 * h,
              ),
              width: double.infinity,
              height: 120 * h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  const SizedBox(height: 12),
                  const Center(
                    child: Text(
                      "Ishonchingiz komilmi ?",
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        color: AppTheme.violetDark,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                  const SizedBox(height: 18),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          margin:  EdgeInsets.only(
                            left: 16 * w,
                          ),
                          width: 151 * w,
                          height: 43 * h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: AppTheme.red,
                          ),
                          child: const Center(
                            child: Text(
                              "Yo’q",
                              style: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 15,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                                color: AppTheme.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          margin: EdgeInsets.only(
                            right: 16 * w,
                          ),
                          width: 151 * w,
                          height: 43 * h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: AppTheme.lightGreen,
                          ),
                          child: const Center(
                            child: Text(
                              "Xa",
                              style: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 15,
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
            ),
          );
        });
  }
}
