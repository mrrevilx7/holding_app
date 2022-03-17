import 'package:flutter/material.dart';
import 'package:holding_app/src/utils/utils_screen.dart';

class DressLoadScreen extends StatefulWidget {
  const DressLoadScreen({Key? key}) : super(key: key);

  @override
  State<DressLoadScreen> createState() => _DressLoadScreenState();
}

class _DressLoadScreenState extends State<DressLoadScreen> {
  @override
  Widget build(BuildContext context) {
    double w = Utils.getWidth(context);
    double h = Utils.getHeight(context);
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 82 * h),
          Container(
            margin: EdgeInsets.only(left: 36, right: 36),
            width: double.infinity,
            height: 272,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.transparent,
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/dress_lady.jpg',
                  ),
                  fit: BoxFit.fill,
                )),
          ),
          SizedBox(height: 40 * h ),
          Row(
            children: [
              SizedBox(width: 36),

            ],
          ),
        ],
      ),
    );
  }
}
