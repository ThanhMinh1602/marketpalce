import 'package:flutter/material.dart';
import 'package:marketpalce/constants/app_assets.dart';
import 'package:marketpalce/constants/app_color.dart';
import 'package:marketpalce/helpers/image_helper.dart';
import 'package:marketpalce/screens/HomeScreens/home_main_screen.dart';
import 'package:marketpalce/screens/HomeScreens/home_take_away_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: [
          const HomeMainScreen(),
          Container(
            color: AppColors.extraLightBackground,
          ),
          Container(
            color: Colors.indigo,
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: ImageHelper.loadFromAsset(_currentIndex == 0
                    ? AppAssets.location_active_icon
                    : AppAssets.location_icon),
                label: ''),
            BottomNavigationBarItem(
                icon: ImageHelper.loadFromAsset(_currentIndex == 1
                    ? AppAssets.order_active_icon
                    : AppAssets.order_icon),
                label: ''),
            BottomNavigationBarItem(
                icon: ImageHelper.loadFromAsset(_currentIndex == 2
                    ? AppAssets.person_active_icon
                    : AppAssets.person_icon),
                label: ''),
          ]),
    );
  }
}
