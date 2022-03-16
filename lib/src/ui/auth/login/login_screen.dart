import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:holding_app/src/theme/app_theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utils/utils_screen.dart';
import '../forgot_password/forgot_password_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _usernameCon = TextEditingController();
  final TextEditingController _passwordCon = TextEditingController();
  bool _showEye = false;
  bool isNext = false;
  bool isLoading = false;

  @override
  void initState() {

    if (_usernameCon.text.length > 2 && _passwordCon.text.length > 2) {
        setState(() {
          isNext = true;
        });
      } else {
        setState(() {
          isNext = false;
        });
      }
    _passwordCon.addListener(() {
      if (_usernameCon.text.length > 2 && _passwordCon.text.length > 2) {
        setState(() {
          isNext = true;
        });
      } else {
        setState(() {
          isNext = false;
        });
      }
    });
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    double w = Utils.getWidth(context);
    double h = Utils.getHeight(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppTheme.black,
      body: Stack(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 467 * h,
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
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(32),
                    topLeft: Radius.circular(32),
                  ),
                  color: AppTheme.white,
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        left: 24 * w,
                        right: 24 * w,
                        top: 32 * h,
                      ),
                      child: const Center(
                          child: Text(
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
                    Spacer(),
                    Container(
                      margin: const EdgeInsets.only(
                        left: 24,
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
                    Container(
                      margin: const EdgeInsets.only(top: 12),
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                CupertinoPageRoute(
                                  builder: (context) {
                                    return const ForgotPasswordScreen();
                                  },
                                ),
                              );
                            },
                            child: const Text(
                              "Forgot password?",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                decorationColor: AppTheme.neturalBlue,
                                decorationThickness: 1.75,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: AppTheme.neturalBlue,
                                fontFamily: 'Avenir',
                                height: 1.5,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        if(isNext ) {
                          _sendApi(
                            _usernameCon.text,
                            _passwordCon.text,
                          );

                        }

                            },

                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 270),
                        margin: const EdgeInsets.only(top: 32, left: 16, right: 16),
                        width: MediaQuery.of(context).size.width,
                        height: 56,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: isNext ? AppTheme.neturalBlue : AppTheme.lightgray,
                        ),
                        child: Center(
                          child: isLoading
                              ? const CircularProgressIndicator(
                                  color: AppTheme.white,
                                )
                              :  const Text(
                                  "Tizimga kirish",
                                  style:  TextStyle(
                                    fontFamily: 'Avenir',
                                    fontWeight: FontWeight.w500,
                                    color: AppTheme.white,
                                    fontSize: 16,
                                  ),
                                ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Container(
                      margin: EdgeInsets.only(bottom: Platform.isIOS ?32:24),
                      child: RichText(
                        text: const TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                              text: "Hisobingiz yo'qmi?  ",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontFamily: '',
                                color: AppTheme.gray,
                                fontSize: 14,
                              ),
                            ),
                            TextSpan(
                              text: "Ro'yxatdan o'tish",
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                decorationColor: AppTheme.neturalBlue,
                                decorationThickness: 1.75,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Avenir',
                                color: AppTheme.neturalBlue,
                                fontSize: 14,
                              ),
                            )
                          ],
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

Future<void> _sendApi (String username, String password) async {


}
