import 'package:flutter/material.dart';
import 'package:marketpalce/constants/app_assets.dart';
import 'package:marketpalce/constants/app_color.dart';
import 'package:marketpalce/helpers/image_helper.dart';

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
              Stack(
                children: [
                  Positioned.fill(
                    child: ImageHelper.loadFromAsset(
                        AppAssets.splash_basehall_background1,
                        fit: BoxFit.fitWidth),
                  ),
                ],
              ),
              Container(
                color: AppColors.orangePrimary,
              )
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
