import 'package:flutter/material.dart';
import 'package:marketpalce/constants/app_assets.dart';
import 'package:marketpalce/constants/app_color.dart';
import 'package:marketpalce/constants/app_style.dart';
import 'package:marketpalce/helpers/image_helper.dart';
import 'package:marketpalce/screens/HomeScreens/book_screen.dart';
import 'package:marketpalce/screens/HomeScreens/browse_screen.dart';
import 'package:marketpalce/screens/HomeScreens/delivery_screen.dart';
import 'package:marketpalce/screens/HomeScreens/take_away_screen.dart';

class HomeMainScreen extends StatefulWidget {
  const HomeMainScreen({Key? key}) : super(key: key);

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
  List<String> itemsTarBar = ['Take Away', 'Delivery', 'Book', 'Browse'];
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.babyBlueEyes,
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
                    Row(
                      children: [
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
                      ],
                    ),
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
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
            width: double.infinity,
            height: 50,
            color: AppColors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                for (int i = 0; i < itemsTarBar.length; i++)
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _current = i;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: _current == i
                              ? AppColors.primaryColor
                              : AppColors.white,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(100))),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 14),
                          child: Text(
                            itemsTarBar[i],
                            style: _current == i
                                ? AppStyle.text_13_600
                                : AppStyle.text_13_600.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                  )
              ],
            ),
          ),
          Expanded(
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                IndexedStack(
                  index: _current,
                  children: const [
                    TakeAwayScreen(),
                    DeliceryScreen(),
                    BookScreen(),
                    BrowseScreen()
                  ],
                ),
                Positioned(
                  bottom: 6,
                  child: Container(
                    width: 120,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: AppColors.white),
                    child: Stack(alignment: Alignment.center, children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Map',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w600),
                            ),
                            Text(
                              '|',
                              style: TextStyle(
                                  color: AppColors.lightGray, fontSize: 17),
                            ),
                            Text('Filter',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w600)),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 8,
                        right: 9,
                        child: Container(
                          width: 12,
                          height: 12,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.primaryColor),
                          child: const Center(
                            child: Text(
                              '3',
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.white),
                            ),
                          ),
                        ),
                      )
                    ]),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
