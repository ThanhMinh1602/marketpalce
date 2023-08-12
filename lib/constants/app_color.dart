import 'package:flutter/material.dart';

class AppColors {
  static const Color primaryColor = Color.fromARGB(255, 107, 166, 255);
  static const Color redPrimary = Color(0xFFFF5D5D);
  static const Color orangePrimary = Color(0xFFFBAC36);
  static const Color purplePrimary = Color(0xFFA88AEC);
  static const Color greenPrimary = Color(0xFF86CC7A);
  static const Color T_title_black = Color(0xFF333333);
  static const Color T_text_Gray_1 = Color(0xFF666666);
  static const Color lightGray = Color(0xFF999999);
  static const Color lightBackground = Color(0xFFEAEAEA);
  static const Color extraLightBackground = Color.fromRGBO(235, 239, 242, 0.5);
  static const Color babyBlueEyes = Color(0XFFF2F3F8);
  static const Color white = Color(0xFFFFFFFF);

  // Opacity function
  static Color withOpacity(Color color, double opacity) {
    return color.withOpacity(opacity);
  }
}
