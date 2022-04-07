import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:holding_app/src/ui/director/cost_proche/cost_proche.dart';
import 'package:holding_app/src/ui/director/cost_serio/cost_serio.dart';
import 'package:holding_app/src/ui/manager/about_holding_one_screen/about_holding_one_screen.dart';

import '../../../../theme/app_theme.dart';
import '../../../../utils/utils_screen.dart';

class DirectorSerioProchiScreen extends StatefulWidget {
  const DirectorSerioProchiScreen({Key? key}) : super(key: key);

  @override
  State<DirectorSerioProchiScreen> createState() =>
      _DirectorSerioProchiScreenState();
}

class _DirectorSerioProchiScreenState extends State<DirectorSerioProchiScreen>
    with SingleTickerProviderStateMixin {
  TabController? _controller;
  TextEditingController Statecontroller = TextEditingController();

  @override
  void initState() {
    _controller = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double w = Utils.getWidth(context);
    double h = Utils.getWidth(context);
    return Scaffold(
      backgroundColor: AppTheme.white,
      body: Column(
        children: [
          SizedBox(height: 68 * h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(width: 16 * w),
              const Text(
                "Asosiy sahifa",
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  color: AppTheme.black,
                ),
              ),
              Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const HoldingScreen();
                      },
                    ),
                  );
                },
                child: Container(
                  width: 60 * w,
                  height: 60 * w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    color: Colors.transparent,
                  ),
                  child: Center(
                    child: Hero(
                      tag: "prep",
                      child: Image.asset(
                        "assets/images/mexico_girl.png",
                        width: 60,
                        height: 60,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 16 * w),
            ],
          ),
          Container(
            margin: EdgeInsets.only(
              top: 24 * h,
              left: 16 * w,
              right: 16 * w,
            ),
            width: double.infinity,
            height: 60 * h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: AppTheme.black,
            ),
            child: TabBar(
              controller: _controller,
              labelColor: AppTheme.black,
              unselectedLabelColor: AppTheme.white,
              labelStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                fontFamily: 'Poppins',
                color: AppTheme.black,
              ),
              unselectedLabelStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                fontFamily: 'Poppins',
              ),
              indicatorPadding: const EdgeInsets.all(6),
              indicator: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(100),
                color: Colors.white,
              ),
              tabs: const [
                Tab(
                  text: "SERIO",
                ),
                Tab(
                  text: "PROCHI",
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _controller,
              children: const [
                SerioDirectorScreen(),
                ProchiDirectorScreen(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
