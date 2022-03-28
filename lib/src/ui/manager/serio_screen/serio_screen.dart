import 'package:flutter/material.dart';
import 'package:holding_app/src/theme/app_theme.dart';

import '../../../utils/utils_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SerioScreen extends StatefulWidget {
  const SerioScreen({Key? key}) : super(key: key);

  @override
  State<SerioScreen> createState() => _SrieoScreenState();
}

class _SrieoScreenState extends State<SerioScreen> {
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
              SvgPicture.asset(
                "assets/icons/circle_plus.svg",
                height: 24 * w,
                width: 24 * w,
                fit: BoxFit.cover,
              ),
              SizedBox(width: 16 * w),
            ],
          ),
        ],
      ),
    );
  }
}
