import 'package:flutter/material.dart';
import 'package:holding_app/src/model/onboard_model/onboard_model.dart';

class OnboardingOneScreen extends StatefulWidget {
  const OnboardingOneScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingOneScreen> createState() => _OnboardingOneScreenState();
}

class _OnboardingOneScreenState extends State<OnboardingOneScreen> {
  int _iselectedIndex = 0;
  List<OnboardModel> onb = [
    OnboardModel(image: "assets/images/lady.png"),
    OnboardModel(image: "assets/images/room.png"),
    OnboardModel(image: "assets/images/menu.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
              onPageChanged: (_index) {
                setState(() {
                  _iselectedIndex = _index;
                });
              },
              itemCount: onb.length,
              itemBuilder: (context, index) {
                return Image.asset(
                  onb[index].image,
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                );
              }),
        ],
      ),
    );
  }
}
