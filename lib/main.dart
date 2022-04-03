import 'package:flutter/material.dart';
import 'package:holding_app/src/ui/connecter_screens/director_contnnect_screen_admin_about_work/director_warehouse_connect_screen/director_warehouse_connect_screen.dart';

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
      home: WareHouseManagerScreen(),
      //ConnectManagerScreen(),
      //HoldingScreen(),
      //OnboardingOneScreen(),
    );
  }
}
