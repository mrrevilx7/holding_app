import 'package:flutter/material.dart';
import 'package:holding_app/src/ui/connecter_screens/connecter_screens.dart';
import 'package:holding_app/src/ui/customer/news_screen/news_screen.dart';
import 'package:holding_app/src/ui/customer/profile_view/profile_view_screen.dart';
import 'package:holding_app/src/ui/onboarding/onboarding_one/onboarding_one.dart';
import 'package:holding_app/src/ui/seller/seller_screen/seller_screen.dart';

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
      home: OnboardingOneScreen(),
      //ProfileScreen(),
      //NewsScreen(),
      //OnboardingOneScreen(),
    );
  }
}
