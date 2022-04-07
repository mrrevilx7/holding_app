import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';
import '../../utils/utils_screen.dart';
import '../seller/saller_screen_50_50/saller_screen_50_50.dart';
import '../seller/saller_screen_sale/seller_screen_sale.dart';
import '../seller/seller_screen/seller_screen_buy.dart';

class ConnectScreen extends StatefulWidget {
  const ConnectScreen({Key? key}) : super(key: key);

  @override
  State<ConnectScreen> createState() => _ConnectScreenState();
}

class _ConnectScreenState extends State<ConnectScreen>
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
                  "Sotuvchi",
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
                  text: "All",
                ),
                Tab(
                  text: "Sotish",
                ),
                Tab(
                  text: "50 / 50",
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _controller,
              children:  [
                BuyingScreen(),
                SallerScreenSale(),
                FivetyScreen(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
