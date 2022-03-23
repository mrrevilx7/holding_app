import 'package:flutter/material.dart';

import '../../../theme/app_theme.dart';
import '../../../utils/utils_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  @override
  Widget build(BuildContext context) {
    double w = Utils.getWidth(context);
    double h = Utils.getHeight(context);
    DateTime dateTime = DateTime.now();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.white,
        elevation: 0.1,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(color: Colors.transparent),
            child: const Icon(
              Icons.arrow_back_ios,
              size: 24,
              color: AppTheme.black,
            ),
          ),
        ),
        centerTitle: true,
        title: const Text(
          "News",
          style: TextStyle(
            color: AppTheme.white,
            fontWeight: FontWeight.bold,
            fontSize: 16,
            fontFamily: 'Manrope',
          ),
        ),
      ),
      body: ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: 5,
          itemBuilder: (_, i) {
            return Container(
              margin: EdgeInsets.only(
                left: 16 * w,
                top: 16 * h,
                right: 16 * w,
              ),
              width: double.infinity,
              height: 600 * h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: AppTheme.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    spreadRadius: 0,
                    blurRadius: 4,
                    offset: const Offset(0, 3),
                    // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(
                            left: 16 * w,
                            top: 8 * h,
                          ),
                          child: const Text(
                            "Holding1",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 15,
                              fontFamily: 'Poppins',
                              color: AppTheme.violetDark,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          right: 16 * w,
                          top: 8 * h,
                        ),
                        child: Text(
                          dateTime.day.toString() +
                              "." +
                              dateTime.month.toString() +
                              "." +
                              dateTime.year.toString(),
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Roboto',
                            color: AppTheme.magenta.withOpacity(0.7),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 12 * h),
                    width: double.infinity,
                    height: 160,
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                    ),
                    child: Image.asset("assets/images/image_z.png"),
                  ),
                  SizedBox(height: 10 * h),
                  Container(
                    margin: EdgeInsets.only(left: 12 * w),
                    child: const Text(
                      "Ishchi xodim kerak ( Sotuvchi, Qizlar kerak )",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: AppTheme.black,
                      ),
                    ),
                  ),
                  SizedBox(height: 14 * h),
                  Container(
                    margin: EdgeInsets.only(left: 12 * w),
                    child: const Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit,\nsed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\nExcepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                      maxLines: 5,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: AppTheme.black,
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
