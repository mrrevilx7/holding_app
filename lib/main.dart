import 'package:flutter/material.dart';
import 'package:holding_app/src/ui/connecter_screens/director_contnnect_screen_admin_about_work/director_contnnect_screen_admin_about_work.dart';
import 'package:holding_app/src/ui/connecter_screens/director_contnnect_screen_admin_about_work/director_warehouse_connect_screen/director_warehouse_connect_screen.dart';
import 'package:holding_app/src/ui/connecter_screens/holdin_one_income_connect/holdin_one_income.dart';
import 'package:holding_app/src/ui/director/about_holdings/about_holding_one/about_holding_one.dart';
import 'package:holding_app/src/ui/director/delivery_statika/delivery%20statatika.dart';
import 'package:holding_app/src/ui/director/holdin_one_shop_one/holdin_one_shop_one.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widgets is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const HoldinOneShop(),
      //ConnectManagerScreen(),
      //HoldingScreen(),
      //OnboardingOneScreen(),
    );
  }
}
