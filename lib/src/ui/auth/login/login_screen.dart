import 'package:flutter/material.dart';
import 'package:holding_app/src/theme/app_theme.dart';

import '../../../utils/utils_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    double w = Utils.getWidth(context);
    double h = Utils.getHeight(context);
    return Scaffold(
      backgroundColor: AppTheme.black,
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 495 * h,
            child: Image.asset(
              "assets/images/image_winter.png",
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: AppTheme.black.withOpacity(0.4),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 98 * h,
              ),
              Center(
                child: Text(
                  "HHH",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                    fontFamily: 'Avenir',
                    color: AppTheme.mainlyBLUE,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
