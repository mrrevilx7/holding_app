import 'package:flutter/material.dart';
import 'package:holding_app/src/ui/seller/seller_screen.dart';

import '../../../utils/utils_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WaitScreen extends StatefulWidget {
  const WaitScreen({Key? key}) : super(key: key);

  @override
  State<WaitScreen> createState() => _WaitScreenState();
}

class _WaitScreenState extends State<WaitScreen> {
  @override
  Widget build(BuildContext context) {
    double w = Utils.getWidth(context);
    double h = Utils.getHeight(context);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 60 * h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/list.png",
                width: 185 * w,
                height: 185 * w,
                fit: BoxFit.cover,
              ),
              SizedBox(width: 16),
              Image.asset(
                "assets/images/phone_pass_lock.png",
                width: 180 * w,
                height: 180 * w,
                fit: BoxFit.cover,
              ),
            ],
          ),
          Image.asset(
            "assets/images/programmer.png",
            width: 365 * w,
            height: 312 * h,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 12),
          Text(
            "Assalomu alaykum!",
            style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              fontSize: 18,
              letterSpacing: 0.3,
            ),
          ),
          SizedBox(height: 12),
          Align(
            child: Text(
              "Siz adminstrator tekshiruvidan o’tmoqdasiz! 24 soat davomida sizni tekshirib sizga habarnoma yuboramiz",
              maxLines: 5,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                fontSize: 18,
                letterSpacing: 0.3,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
