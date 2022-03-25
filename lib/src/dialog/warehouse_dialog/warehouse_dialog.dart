import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:holding_app/src/theme/app_theme.dart';

import '../../utils/utils_screen.dart';

class CenterWarehouseDialog {
  static void showWarehouseDialog(BuildContext context, index) {
    double w = Utils.getWidth(context);
    double h = Utils.getHeight(context);
    TextEditingController _dressNameCon = TextEditingController();
    TextEditingController _dressImageCon = TextEditingController();
    TextEditingController _dressPriceCon = TextEditingController();
    showDialog(
        context: context,
        barrierColor: Colors.black.withOpacity(0.7),
        builder: (context) {
          return Center(
            child: Container(
              margin: EdgeInsets.only(
                left: 16,
                right: 16,
              ),
              width: double.infinity,
              height: 350 * h,
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
                        "Yangi maxsulot  kiritish",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          color: AppTheme.black,
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
                            child: Container(
                              padding: EdgeInsets.only(
                                top: 12 * h,
                                left: 14 * w,
                              ),
                              height: 40,
                              width: MediaQuery.of(context).size.width - 100,
                              child: TextField(
                                keyboardType: TextInputType.number,
                                controller: _dressNameCon,
                                decoration: InputDecoration(
                                  hintText: "Maxsulot nomi",
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
                          width: 278 * w,
                          height: 56 * h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(16),
                              topLeft: Radius.circular(16),
                            ),
                            border: Border.all(
                              width: 1,
                              color: AppTheme.black,
                            ),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  margin: const EdgeInsets.only(
                                    left: 12,
                                    top: 12,
                                  ),
                                  height: 40,
                                  width:
                                  MediaQuery.of(context).size.width - 100,
                                  child: TextField(
                                    keyboardType: TextInputType.number,
                                    controller: _dressNameCon,
                                    decoration: InputDecoration(
                                      hintText: "Maxsulot rasmi",
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
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(16),
                              topRight: Radius.circular(16),
                            ),
                            color: AppTheme.black,
                          ),
                          child: const Center(
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
          );
        });
  }
}
