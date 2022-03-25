import 'package:flutter/material.dart';

import '../../../dialog/saller_screen_sale_center_dialog/saller_screen_sale_center_dialog.dart';
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
        ],
      ),
    );
  }
}
