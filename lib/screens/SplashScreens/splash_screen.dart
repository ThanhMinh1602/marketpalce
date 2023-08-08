// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:marketpalce/constants/app_assets.dart';
import 'package:marketpalce/constants/app_color.dart';
import 'package:marketpalce/helpers/image_helper.dart';
import 'package:marketpalce/screens/SplashScreens/widget_splash_page.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final PageController _pagecontroller = PageController();

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
          )
        ],
      ),
    );
  }
}
