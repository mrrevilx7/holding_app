
import 'package:flutter/material.dart';
import 'package:holding_app/src/model/saller_screen_model/saller_screen_model.dart';
import 'package:holding_app/src/theme/app_theme.dart';
import 'package:holding_app/src/utils/utils_screen.dart';

class SallerScreen extends StatefulWidget {
  const SallerScreen({Key? key}) : super(key: key);

  @override
  State<SallerScreen> createState() => _SallerScreenState();
}

class _SallerScreenState extends State<SallerScreen> {
  List<SallerModel> sale = [
    SallerModel(price: 10000, name: "Salon Nomi", image: "dress1.png"),
    SallerModel(price: 10000, name: "Salon Nomi", image: "dress2.png"),
    SallerModel(price: 10000, name: "Salon Nomi", image: "dress3.png"),
    SallerModel(price: 10000, name: "Salon Nomi", image: "dress_lady.png"),
    SallerModel(price: 10000, name: "Salon Nomi", image: "lady.png"),
  ];

  @override
  Widget build(BuildContext context) {
    double w = Utils.getWidth(context);
    double h = Utils.getHeight(context);
    return Scaffold(
      backgroundColor: AppTheme.white,
      body: ListView(
        children: [
          SizedBox(height: 16 * h),
          Container(
            margin: EdgeInsets.only(left: 16 * w),
            child: const Text(
              "Kunlik sotuvlar",
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700,
                fontSize: 16,
                color: AppTheme.black,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 16 * w, right: 16 * w),
            height: 1,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: AppTheme.black,
              ),
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (_, i) {
              return Container(
                width: double.infinity,
                height: 64,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppTheme.lightgray,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
