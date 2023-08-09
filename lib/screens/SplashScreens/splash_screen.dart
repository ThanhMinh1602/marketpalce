// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

import 'package:flutter/material.dart';

import 'package:marketpalce/constants/app_assets.dart';
import 'package:marketpalce/constants/app_color.dart';
import 'package:marketpalce/helpers/image_helper.dart';
import 'package:marketpalce/screens/MainScreens/main_screen.dart';
import 'package:marketpalce/screens/SplashScreens/widget_splash_page.dart';
import 'package:marketpalce/widgets/custom_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final PageController _pagecontroller = PageController();
  final StreamController<int> _streamController =
      StreamController<int>.broadcast();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pagecontroller.addListener(() {
      _streamController.add(_pagecontroller.page!.toInt());
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pagecontroller,
            children: [
              SplashPage(
                screenHeight: screenHeight,
                screenWidth: screenWidth,
                colorDescription: AppColors.white,
                colorTitle: AppColors.white,
                title: 'Diversity',
                description: 'The food hall provides diverse food for '
                    '\nthe office crowd and attracts the crowd '
                    '\nto the center of the bar.',
                child: ImageHelper.loadFromAsset(
                    AppAssets.splash_basehall_background1,
                    fit: BoxFit.fitWidth),
              ),
              SplashPage(
                screenHeight: screenHeight,
                screenWidth: screenWidth,
                colorDescription: AppColors.white,
                colorTitle: AppColors.white,
                title: 'BaseHall',
                description: 'Welcome to BaseHall. Order now from a '
                    '\ndiverse range of cuisines for collection '
                    '\nat the Jardine House food hall.',
                child: ImageHelper.loadFromAsset(
                    AppAssets.splash_basehall_background2,
                    fit: BoxFit.fitWidth),
              ),
              SplashPage(
                  screenHeight: screenHeight,
                  screenWidth: screenWidth,
                  colorDescription: AppColors.T_title_black,
                  colorTitle: AppColors.T_text_Gray_1,
                  title: 'BaseHall',
                  description: 'Welcome to BaseHall. Order now from a '
                      '\ndiverse range of cuisines for collection '
                      '\nat the Jardine House food hall.',
                  child: Container(
                    alignment: Alignment.topCenter,
                    child: ImageHelper.loadFromAsset(
                        AppAssets.splash_basehall_background3,
                        fit: BoxFit.fitWidth),
                  )),
            ],
          ),
          Positioned(
            top: screenHeight * 0.07,
            right: screenWidth * 0.06,
            child: ImageHelper.loadFromAsset(AppAssets.language_icon),
          ),
          Positioned(
            top: screenHeight * 0.9,
            left: screenWidth * 0.04,
            right: screenWidth * 0.04,
            child: StreamBuilder<Object>(
                initialData: 0,
                stream: _streamController.stream,
                builder: (context, snapshot) {
                  if (snapshot.data == 0) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SmoothPageIndicator(
                          controller: _pagecontroller,
                          count: 2,
                          effect: const ExpandingDotsEffect(
                              dotHeight: 8, dotWidth: 8),
                        ),
                        CustomButtonWidget(
                          backgroundColor: AppColors.primaryColor,
                          foregroundColor: AppColors.white,
                          label: 'Next',
                          onPressed: () {
                            _pagecontroller.nextPage(
                                duration: Duration(milliseconds: 100),
                                curve: Curves.bounceIn);
                          },
                        )
                      ],
                    );
                  } else {
                    return SizedBox(
                      height: 50,
                      width: 50,
                      child: CustomButtonWidget(
                        backgroundColor: AppColors.primaryColor,
                        foregroundColor: AppColors.white,
                        label: 'Time to start ordering',
                        onPressed: () {
                          if (snapshot.data == 1) {
                            _pagecontroller.nextPage(
                                duration: const Duration(milliseconds: 200),
                                curve: Curves.bounceIn);
                          } else {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const MainScreen()));
                          }
                        },
                      ),
                    );
                  }
                }),
          ),
        ],
      ),
    );
  }
}
