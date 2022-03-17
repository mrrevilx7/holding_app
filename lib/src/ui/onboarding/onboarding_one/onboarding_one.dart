import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:holding_app/src/model/onboard_model/onboard_model.dart';
import 'package:holding_app/src/theme/app_theme.dart';

import '../../../utils/utils_screen.dart';
import '../../auth/login/login_screen.dart';

class OnboardingOneScreen extends StatefulWidget {
  const OnboardingOneScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingOneScreen> createState() => _OnboardingOneScreenState();
}

class _OnboardingOneScreenState extends State<OnboardingOneScreen> {
  int _selectedIndex = 0;
  List<OnboardModel> onb = [
    OnboardModel(
        image: "assets/images/lady.png",
        name: 'Welcome',
        title:
            'Lorem ipsum dolor sit amet, consectetur\nadipiscing elit, sed do eiusmod tempor\nincididunt.',
        section: 'Holding1',
        skip: 'Skip',
        arrowRight: ' ',
        isSelect: false),
    OnboardModel(
        image: "assets/images/room.png",
        title:
            'Lorem ipsum dolor sit amet, consectetur\nadipiscing elit, sed do eiusmod tempor\nincididunt.',
        name: 'Find Producers',
        section: 'Holding2',
        arrowRight: 'assets/icons/arrow_left.svg',
        skip: 'Skip',
        isSelect: true),
    OnboardModel(
      image: "assets/images/menu.png",
      title:
          'Lorem ipsum dolor sit amet, consectetur\nadipiscing elit, sed do eiusmod tempor\nincididunt.',
      name: 'Collab',
      section: 'Holding3',
      skip: 'Skip',
      arrowRight: 'assets/icons/arrow_left.svg',
      isSelect: true,
    ),
  ];
  PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    double w = Utils.getWidth(context);
    double h = Utils.getHeight(context);
    return Scaffold(
      backgroundColor: AppTheme.black,
      body: Stack(
        children: [
          PageView.builder(
            controller: controller,
            onPageChanged: (_index) {
              setState(() {
                _selectedIndex = _index;
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
                ],
              );
            },
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 76 * h),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [

                  onb[_selectedIndex].isSelect == true
                      ? GestureDetector(
                        onTap: () {
                          _selectedIndex--;
                          controller.jumpToPage(
                            _selectedIndex,
                          );

                        },
                        child: Container(
                          margin: const EdgeInsets.only(left: 16),
                          width: 24,
                          height: 24,
                          decoration: const BoxDecoration(
                            color: Colors.transparent,
                          ),
                          child: Center(
                            child: SvgPicture.asset(
                              onb[_selectedIndex].arrowRight,
                              width: 24,
                              height: 24,
                            ),
                          ),
                        ),
                      )
                      : Container(
                          margin: const EdgeInsets.only(left: 16),
                          width: 24,
                          height: 24,
                          decoration: const BoxDecoration(
                            color: Colors.transparent,
                          ),
                        ),
                  const Spacer(),

                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const LoginScreen();
                          },
                        ),
                      );
                    },
                    child: Text(
                      onb[_selectedIndex].skip,
                      style: const TextStyle(
                        fontFamily: 'Avenir',
                        fontWeight: FontWeight.w400,
                        color: AppTheme.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                ],
              ),
              const Spacer(),
              Center(
                child: Text(
                  onb[_selectedIndex].section,
                  style: const TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: AppTheme.white,
                    fontFamily: 'Avenir',
                  ),
                ),
              ),
              SizedBox(height: 116 * h),
              Center(
                child: Text(
                  onb[_selectedIndex].name,
                  style: const TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w400,
                    color: AppTheme.white,
                    fontFamily: 'Avenir',
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Center(
                child: Text(
                  onb[_selectedIndex].title,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: AppTheme.white,
                    fontFamily: 'Avenir',
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 8,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AnimatedContainer(
                          height: 8,
                          width: _selectedIndex == 0 ? 27 : 8,
                          duration: const Duration(milliseconds: 270),
                          decoration: BoxDecoration(
                            color: _selectedIndex == 0
                                ? AppTheme.neturalBlue
                                : AppTheme.white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        const SizedBox(width: 4),
                        AnimatedContainer(
                          height: 8,
                          width: _selectedIndex == 1 ? 27 : 8,
                          duration: const Duration(milliseconds: 270),
                          decoration: BoxDecoration(
                            color: _selectedIndex == 1
                                ? AppTheme.neturalBlue
                                : AppTheme.white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        const SizedBox(width: 4),
                        AnimatedContainer(
                          height: 8,
                          width: _selectedIndex == 2 ? 27 : 8,
                          duration: const Duration(milliseconds: 270),
                          decoration: BoxDecoration(
                            color: _selectedIndex == 2
                                ? AppTheme.neturalBlue
                                : AppTheme.white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _selectedIndex++;
                      if (_selectedIndex == 3) {
                        Navigator.pushReplacement(
                          context,
                          CupertinoPageRoute(
                            builder: (context) {
                              return const LoginScreen();
                            },
                          ),
                        );
                      } else {
                        controller.jumpToPage(
                          _selectedIndex,
                        );
                      }
                    },
                    child: Container(
                      margin: const EdgeInsets.only(
                        top: 48,
                        bottom: 32,
                        left: 16,
                      ),
                      width: MediaQuery.of(context).size.width - 48,
                      height: 50,
                      decoration: const BoxDecoration(
                        color: AppTheme.neturalBlue,
                      ),
                      child: const Center(
                        child: Text(
                          "Continue",
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: "Manrope",
                            fontWeight: FontWeight.w400,
                            color: AppTheme.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
