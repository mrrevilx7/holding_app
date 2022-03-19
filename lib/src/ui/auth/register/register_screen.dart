import 'dart:io';

import 'package:flutter/material.dart';
import 'package:holding_app/src/model/auth_api/register/register_model.dart';
import 'package:holding_app/src/theme/app_theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../dialog/dialog.dart';
import '../../../repository/repository.dart';
import '../../../utils/utils_screen.dart';
import '../../customer/profile_view/profile_view_screen.dart';
import '../../delivery/delivery.dart';
import '../../director/director_screen.dart';
import '../../manager/manager_screen.dart';
import '../../seller/seller_screen.dart';
import '../../warehouse/warehouse.dart';
import '../forgot_password/forgot_password_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _usernameCon = TextEditingController();
  final TextEditingController _passwordCon = TextEditingController();
  final TextEditingController _phoneCon = TextEditingController();
  final Repository _repository = Repository();
  bool _showEye = false;
  bool isNext = false;
  bool isLoading = false;
  bool holding1 = false;
  bool holding2 = false;
  bool tick = false;

  @override
  void initState() {
    if (_usernameCon.text.length > 2 &&
        _passwordCon.text.length > 2 &&
        _phoneCon.text.length == 9) {
      setState(() {
        isNext = true;
      });
    } else {
      setState(() {
        isNext = false;
      });
    }

    _phoneCon.addListener(() {
      if (_usernameCon.text.length > 2 &&
          _passwordCon.text.length > 2 &&
          _phoneCon.text.length == 9) {
        setState(() {
          isNext = true;
        });
      } else {
        setState(() {
          isNext = false;
        });
      }
    });

    _passwordCon.addListener(() {
      if (_usernameCon.text.length > 2 &&
          _passwordCon.text.length > 2 &&
          _phoneCon.text.length > 2) {
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
                height: 48 * h,
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
                  top: 48 * h,
                ),
                width: MediaQuery.of(context).size.width,
                height: 698 * h,
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
                        top: 16 * h,
                      ),
                      child: Center(
                        child: RichText(
                          text: const TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                text: "Hamkorlik ",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Avenir',
                                  color: AppTheme.neturalBlue,
                                  fontSize: 26,
                                ),
                              ),
                              TextSpan(
                                text: "hisob yaratish",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Avenir',
                                  color: AppTheme.black,
                                  fontSize: 26,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        left: 24,
                        right: 24,
                        top: 8,
                      ),
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
                              height: 0.2,
                            )),
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Avenir',
                          color: AppTheme.black,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        margin: const EdgeInsets.only(
                          left: 24,
                          top: 32,
                          right: 24,
                        ),
                        width: double.infinity,
                        height: 52,
                        child: TextField(
                          controller: _phoneCon,
                          decoration: const InputDecoration(
                            labelText: "Phone",
                            prefix: Text(
                              "+998 ",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Avenir',
                                color: AppTheme.black,
                              ),
                            ),
                            labelStyle: TextStyle(
                              color: AppTheme.gray,
                              fontFamily: 'Avenir',
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              height: 0.01,
                            ),
                          ),
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Avenir',
                            color: AppTheme.black,
                          ),
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
                            height: 0.1,
                          ),
                        ),
                        obscureText: _showEye,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Avenir',
                          color: AppTheme.black,
                        ),
                      ),
                    ),
                    const SizedBox(height: 32),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              holding2 = false;
                              holding1 = true;
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.only(
                              left: 24 * w,
                            ),
                            width: 20 * w,
                            height: 20 * w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: holding1
                                  ? AppTheme.neturalBlue
                                  : AppTheme.neturalGray,
                            ),
                          ),
                        ),
                        const SizedBox(width: 20),
                        Text(
                          "Holding1 ",
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Avenir',
                            fontWeight: FontWeight.w400,
                            color: AppTheme.black.withOpacity(0.6),
                            letterSpacing: 0.1,
                          ),
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              holding2 = true;
                              holding1 = false;
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.only(
                              left: 24 * w,
                            ),
                            width: 20 * w,
                            height: 20 * w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: holding2
                                  ? AppTheme.neturalBlue
                                  : AppTheme.neturalGray,
                            ),
                          ),
                        ),
                        const SizedBox(width: 20),
                        Text(
                          "Holding2 ",
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Avenir',
                            fontWeight: FontWeight.w400,
                            color: AppTheme.black.withOpacity(0.6),
                            letterSpacing: 0.1,
                          ),
                        ),
                        SizedBox(
                          width: 24 * w,
                        )
                      ],
                    ),
                    const SizedBox(height: 32),
                    Row(
                      children: [
                        GestureDetector(
                            onTap: () {
                              setState(() {
                                tick = !tick;
                              });
                            },
                            child: tick
                                ? Container(
                                    margin: const EdgeInsets.only(
                                      left: 24,
                                    ),
                                    width: 15 * w,
                                    height: 15 * w,
                                    child: Center(
                                      child: SvgPicture.asset(
                                        "assets/icons/tick.svg",
                                        color: Colors.green,
                                      ),
                                    ),
                                  )
                                : Container(
                                    margin: const EdgeInsets.only(
                                      left: 24,
                                    ),
                                    width: 15 * w,
                                    height: 15 * w,
                                    decoration: BoxDecoration(
                                      color: AppTheme.neturalGray,
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                  )),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                text: TextSpan(
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: "Shartlarga roziman",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Avenir',
                                        color: AppTheme.black.withOpacity(0.6),
                                        fontSize: 14,
                                      ),
                                    ),
                                    const TextSpan(
                                      text: " Xizmat ko'rsatish shartlari\nva ",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Avenir',
                                        color: AppTheme.black,
                                        fontSize: 14,
                                      ),
                                    ),
                                    const TextSpan(
                                      text: "Maxfiylik siyosati ",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Avenir',
                                        color: AppTheme.black,
                                        fontSize: 14,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        if (isNext) {
                          _sendApiReg(
                            _usernameCon.text,
                            _passwordCon.text,
                              _phoneCon.text,
                          );
                        }
                      },
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 270),
                        margin:
                            const EdgeInsets.only(top: 32, left: 16, right: 16),
                        width: MediaQuery.of(context).size.width,
                        height: 56,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: isNext
                              ? AppTheme.neturalBlue
                              : AppTheme.lightgray,
                        ),
                        child: Center(
                          child: isLoading
                              ? const CircularProgressIndicator(
                                  color: AppTheme.white,
                                )
                              : const Text(
                                  " Ro'yxatdan o'tish ",
                                  style: TextStyle(
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
                      margin: EdgeInsets.only(bottom: Platform.isIOS ? 32 : 24),
                      child: RichText(
                        text: const TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                              text: "Hisob allaqachon mavjud?  ",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Avenir',
                                color: AppTheme.gray,
                                fontSize: 14,
                              ),
                            ),
                            TextSpan(
                              text: "Tizimga kirish",
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

  Future<void> _sendApiReg(String user, String pass, String phone,) async {
    var response = await _repository.sendRegister(user, phone, pass,);
    if (response.isSuccess) {
      RegisterModel result =  RegisterModel.fromJson(response.result);
      if (result.userRole == "user") {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const ProfileScreen();
            },
          ),
        );
      } else {
        CenterDialog.showErrorDialog(context, "Login yoki Password xato. Iltimos qayta urinib ko'ring");
      }
    }

  }
}

