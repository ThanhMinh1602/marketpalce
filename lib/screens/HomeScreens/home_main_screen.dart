import 'package:flutter/material.dart';
import 'package:marketpalce/constants/app_assets.dart';
import 'package:marketpalce/constants/app_color.dart';
import 'package:marketpalce/helpers/image_helper.dart';

class HomeMainScreen extends StatefulWidget {
  const HomeMainScreen({super.key});

  @override
  State<HomeMainScreen> createState() => _HomeMainScreenState();
}

class _HomeMainScreenState extends State<HomeMainScreen> {
  String selectedLocation = 'Unnamed Road';

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
        ),
      ),
    );
  }
}
