import 'package:flutter/material.dart';
import 'package:holding_app/src/ui/connecter_screens/connecter_screens.dart';
import 'package:holding_app/src/ui/customer/dress_load_screen/dress_load_screen.dart';
import 'package:holding_app/src/ui/customer/profile_view/profile_view_screen.dart';
import 'package:holding_app/src/ui/customer/wait_screen/wait_screen.dart';
import 'package:holding_app/src/ui/onboarding/onboarding_one/onboarding_one.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widgets is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: OnboardingOneScreen(),
    );
  }
}