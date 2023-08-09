import 'package:flutter/material.dart';
import 'package:marketpalce/constants/app_assets.dart';
import 'package:marketpalce/constants/app_color.dart';
import 'package:marketpalce/helpers/image_helper.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeTakeAwayScreen extends StatefulWidget {
  const HomeTakeAwayScreen({super.key});

  @override
  State<HomeTakeAwayScreen> createState() => _HomeTakeAwayScreenState();
}

class _HomeTakeAwayScreenState extends State<HomeTakeAwayScreen> {
  String selectedLocation = 'Unnamed Road';

  List<String> dropdownItems = [
    'Unnamed Road',
    '1 Pat Tat St, San Po Kong',
    '2 Another St, Another City',
    '3 Third Location'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
