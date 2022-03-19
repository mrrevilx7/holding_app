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
              SvgPicture.asset("assets/images/list.png"),
              SvgPicture.asset("assets/images/phone_pass_lock.png"),


            ],
          ),
        ],

      ),
    );
  }
}
