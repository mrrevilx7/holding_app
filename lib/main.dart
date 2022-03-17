import 'package:flutter/material.dart';
import 'package:holding_app/src/ui/customer/profile_view/profile_view_screen.dart';
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
      home: ProfileScreen(),
    );
  }
}