// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:marketpalce/constants/app_color.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({
    Key? key,
    required this.screenHeight,
    required this.screenWidth,
    required this.title,
    required this.colorTitle,
    required this.description,
    required this.colorDescription,
    required this.child,
  }) : super(key: key);

  final double screenHeight;
  final double screenWidth;
  final String title;
  final Color colorTitle;
  final String description;
  final Color colorDescription;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: child,
        ),
        Positioned(
          top: screenHeight * 0.65,
          left: screenWidth * 0.04,
          child: Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 34,
              color: colorTitle,
            ),
          ),
        ),
        Positioned(
          top: screenHeight * 0.72,
          left: screenWidth * 0.04,
          child: Text(
            description,
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 20,
                color: colorDescription),
          ),
        ),
      ],
    );
  }
}
