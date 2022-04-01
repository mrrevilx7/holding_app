import 'package:flutter/material.dart';
import 'package:holding_app/src/ui/connecter_screens/connecter_screens.dart';
import 'package:holding_app/src/ui/connecter_screens/manager_connect_screen/manager_connect_screen.dart';
import 'package:holding_app/src/ui/connecter_screens/warehouse/warehouse_connect_screen.dart';
import 'package:holding_app/src/ui/delivery/delivery.dart';
import 'package:holding_app/src/ui/manager/about_holding_one_screen/about_holding_one_screen.dart';
import 'package:holding_app/src/ui/onboarding/onboarding_one/onboarding_one.dart';
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
      home:  const ConnectManagerScreen(),
      //ConnectManagerScreen(),
      //HoldingScreen(),
      //OnboardingOneScreen(),
    );
  }
}
