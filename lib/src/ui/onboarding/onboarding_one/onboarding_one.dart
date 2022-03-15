import 'package:flutter/material.dart';
import 'package:holding_app/src/model/onboard_model/onboard_model.dart';
import 'package:holding_app/src/theme/app_theme.dart';

class OnboardingOneScreen extends StatefulWidget {
  const OnboardingOneScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingOneScreen> createState() => _OnboardingOneScreenState();
}

class _OnboardingOneScreenState extends State<OnboardingOneScreen> {
  int _iselectedIndex = 0;
  List<OnboardModel> onb = [
    OnboardModel(
        image: "assets/images/lady.png",
        name: 'Welcome',
        title:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.',
        section: 'Holding1'),
    OnboardModel(
        image: "assets/images/room.png",
        title:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.',
        name: 'Find Producers',
        section: 'Holding2'),
    OnboardModel(
        image: "assets/images/menu.png",
        title:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.',
        name: 'Collab',
        section: 'Holding3'),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: AppTheme.black,
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
                onPageChanged: (_index) {
                  setState(() {
                    _iselectedIndex = _index;
                  });
                },
                itemCount: onb.length,
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      Image.asset(
                        onb[index].image,
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.cover,
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Text(
                              onb[index].section,
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: AppTheme.white,
                                fontFamily: 'Avenir',
                              ),
                            ),
                          ),
                          Spacer(),
                          Center(
                            child: Text(
                              onb[index].name,
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: AppTheme.white,
                                fontFamily: 'Avenir',
                              ),
                            ),
                          ),
                          SizedBox(height: 24),
                          Center(
                            child: Text(
                              onb[index].title,
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: AppTheme.white,
                                fontFamily: 'Avenir',
                              ),
                            ),
                          ),

                        ],
                      ),
                    ],
                  );
                }),
          ),
        ],
      ),
    );
  }
}
