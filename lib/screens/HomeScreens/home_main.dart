import 'package:flutter/material.dart';
import 'package:marketpalce/constants/app_assets.dart';
import 'package:marketpalce/constants/app_color.dart';
import 'package:marketpalce/helpers/image_helper.dart';
import 'package:marketpalce/screens/HomeScreens/home_take_away_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeMain extends StatefulWidget {
  const HomeMain({super.key});

  @override
  State<HomeMain> createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain> {
  String selectedLocation = 'Unnamed Road';
  int _currentIndex = 0;
  List<String> dropdownItems = [
    'Unnamed Road',
    '1 Pat Tat St, San Po Kong',
    '2 Another St, Another City',
    '3 Third Location'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 70,
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: AppColors.primaryColor,
          flexibleSpace: Stack(
            children: [
              ImageHelper.loadFromAsset(AppAssets.appBar_bgr),
              Positioned.fill(
                top: 40,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(children: [
                        const Icon(
                          Icons.location_on_sharp,
                          color: AppColors.white,
                        ),
                        DropdownButton<String>(
                          underline: Container(),
                          iconDisabledColor: AppColors.white,
                          elevation: 0,
                          iconEnabledColor: AppColors.white,
                          value: selectedLocation,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: AppColors.white,
                          ),
                          onChanged: (String? newValue) {
                            if (newValue != null) {
                              setState(() {
                                selectedLocation = newValue;
                              });
                            }
                          },
                          items: dropdownItems.map((newValue) {
                            return DropdownMenuItem(
                              value: newValue,
                              child: Text(
                                newValue,
                              ),
                            );
                          }).toList(),
                        )
                      ]),
                      Row(
                        children: [
                          ImageHelper.loadFromAsset(AppAssets.qr_icon),
                          const SizedBox(
                            width: 10,
                          ),
                          ImageHelper.loadFromAsset(AppAssets.search_icon),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          )),
      body: IndexedStack(
        index: _currentIndex,
        children: [
          Container(
            color: AppColors.T_text_Gray_1,
          ),
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
