import 'package:flutter/material.dart';
import 'package:holding_app/src/theme/app_theme.dart';

import '../../../utils/utils_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AboutWorkScreen extends StatefulWidget {
  const AboutWorkScreen({Key? key}) : super(key: key);

  @override
  State<AboutWorkScreen> createState() => _AboutWorkScreenState();
}

class _AboutWorkScreenState extends State<AboutWorkScreen> {
  @override
  Widget build(BuildContext context) {
    double w = Utils.getWidth(context);
    double h = Utils.getWidth(context);
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 24 * h,
          ),
          Row(
            children: [
              SizedBox(width: 16 * w),
              const Text(
                "Ish turlari",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Poppins',
                  fontSize: 18,
                  color: AppTheme.black,
                ),
              ),
              const Spacer(),
              Container(
                margin: EdgeInsets.only(
                  right: 16 * w,
                ),
                width: 50 * w,
                height: 30 * h,
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                ),
                child: Center(
                  child: SvgPicture.asset("assets/icons/icons_plus_line.svg"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
