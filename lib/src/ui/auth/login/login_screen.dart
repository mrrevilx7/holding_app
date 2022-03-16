import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:holding_app/src/theme/app_theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utils/utils_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _usernameCon = TextEditingController();
  TextEditingController _passwordCon = TextEditingController();
  bool _showEye = false;

  @override
  Widget build(BuildContext context) {
    double w = Utils.getWidth(context);
    double h = Utils.getHeight(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
              const Center(
                child: const Text(
                  "HHH",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                    fontFamily: 'Avenir',
                    color: AppTheme.mainlyBLUE,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                "Holding",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                  fontFamily: 'Avenir',
                  color: AppTheme.mainlyBLUE,
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 120 * h,
                ),
                width: 375 * w,
                height: 467 * h,
                decoration: const BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(32),
                    topLeft: const Radius.circular(32),
                  ),
                  color: AppTheme.white,
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        left: 24 * w,
                        right: 24 * w,
                        top: 40 * h,
                      ),
                      child: const Center(
                          child: const Text(
                        "Eng yaxshi hamkorlik",
                        style: TextStyle(
                          fontSize: 30,
                          letterSpacing: 1.2,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Avenir',
                          color: AppTheme.black,
                        ),
                      )),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 24,
                        top: 68 * h,
                        right: 24,
                      ),
                      width: double.infinity,
                      height: 52,
                      child: TextField(
                        controller: _usernameCon,
                        decoration: const InputDecoration(
                            labelText: "Username",
                            labelStyle: TextStyle(
                              color: AppTheme.gray,
                              fontFamily: 'Avenir',
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              // letterSpacing: 0.17
                            )),
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Avenir',
                          color: AppTheme.black,
                          // letterSpacing: - 0.1,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        left: 24,
                        top: 32,
                        right: 24,
                      ),
                      height: 52,
                      child: TextField(
                        controller: _passwordCon,
                        decoration: InputDecoration(
                          suffixIcon: GestureDetector(
                            child: _showEye
                                ? const Icon(Icons.visibility_outlined)
                                : const Icon(Icons.visibility_off_outlined),
                            onTap: () {
                              setState(() {
                                _showEye = !_showEye;
                              });
                            },
                          ),
                          labelText: "Password",
                          labelStyle: const TextStyle(
                            color: AppTheme.gray,
                            fontFamily: 'Avenir',
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            // letterSpacing: 0.17
                          ),
                        ),
                        obscureText: _showEye,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Avenir',
                          color: AppTheme.black,
                          // letterSpacing: - 0.1,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
