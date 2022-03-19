import 'package:flutter/material.dart';

import '../../theme/app_theme.dart';
import '../../utils/utils_screen.dart';

class ConnectScreen extends StatefulWidget {
  const ConnectScreen({Key? key}) : super(key: key);

  @override
  State<ConnectScreen> createState() => _ConnectScreenState();
}

class _ConnectScreenState extends State<ConnectScreen>
    with SingleTickerProviderStateMixin {
  TabController? _controller;
  TextEditingController Statecontroller = new TextEditingController();

  @override
  void initState() {
    _controller = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double w = Utils.getWidth(context);
    double h = Utils.getWidth(context);
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 40 * h),
          Row(
            children: [
              SizedBox(width: 36 * w),
              const Expanded(
                child: Text(
                  "Sotivchi",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                    color: AppTheme.black,
                  ),
                ),
              ),
              Container(
                width: 32 * w,
                height: 32 * w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32),
                  color: Colors.transparent,
                ),
                child: Center(
                  child: Image.asset(
                    "assets/images/mexico_girl.png",
                    width: 32,
                    height: 32,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(
              top: 16 * h,
              left: 36 * w,
              right: 36 * w,
            ),
            width: double.infinity,
            height: 60 * h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: AppTheme.black,
            ),
            child: TabBar(
              controller: _controller,
              labelColor: AppTheme.lightRed,
              unselectedLabelColor: AppTheme.white,
              labelStyle: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w700,
                fontFamily: 'Poppins',
              ),
              unselectedLabelStyle: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w700,
                fontFamily: 'Poppins',
              ),
              tabs: [
                Container(
                  width: 75 * w,
                  height:  40 * h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: AppTheme.white,
                  ),
                  child: Tab(
                    text: "All",
                  ),
                ),
                Container(
                  width: 75 * w,
                  height:  40 * h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: AppTheme.white,
                  ),
                  child: Tab(
                    text: "Sotish",
                  ),
                ),
                Container(
                  width: 75 * w,
                  height:  40 * h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: AppTheme.white,
                  ),
                  child: Tab(
                    text: "50 / 50",
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
