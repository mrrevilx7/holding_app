import 'package:flutter/material.dart';
import '../../../theme/app_theme.dart';
import '../../../utils/utils_screen.dart';
import '../../director/holdin_one_income/holdin_one_month/holdin_one_month.dart';
import '../../director/holdin_one_income/holdin_one_week/holdin_one_week.dart';
import '../../director/holdin_one_income/holdin_one_year/holdin_one_year.dart';

class WarehouseConnectScreen extends StatefulWidget {
  const WarehouseConnectScreen({Key? key}) : super(key: key);

  @override
  State<WarehouseConnectScreen> createState() => _WarehouseConnectScreenState();
}

class _WarehouseConnectScreenState extends State<WarehouseConnectScreen>
    with SingleTickerProviderStateMixin {
  TabController? _controller;
  TextEditingController Statecontroller = TextEditingController();

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
      backgroundColor: AppTheme.white,
      body: Column(
        children: [
          SizedBox(height: 40 * h),
          Row(
            children: [
              SizedBox(width: 16 * w),
              const Expanded(
                child: Text(
                  "Omborchi",
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
              SizedBox(width: 16 * w),
            ],
          ),
          Container(
            margin: EdgeInsets.only(
              top: 16 * h,
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
                fontSize: 12,
                fontWeight: FontWeight.w700,
                fontFamily: 'Poppins',
                color: AppTheme.black,
              ),
              unselectedLabelStyle: const TextStyle(
                fontSize: 12,
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
                  text: "Haftalik",
                ),
                Tab(
                  text: "Oylik",
                ),
                Tab(
                  text: "Yillik",
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _controller,
              children: const [
                HoldinOneWeek(),
                HoldinOneMonth(),
                HoldinOneYear(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
