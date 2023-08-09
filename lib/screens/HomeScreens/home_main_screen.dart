import 'package:flutter/material.dart';
import 'package:marketpalce/constants/app_assets.dart';
import 'package:marketpalce/constants/app_color.dart';
import 'package:marketpalce/constants/app_style.dart';
import 'package:marketpalce/helpers/image_helper.dart';
import 'package:marketpalce/widgets/custom_button.dart';
import 'package:marketpalce/widgets/custom_label.dart';

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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
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
                      )),
                    ),
                  )
              ],
            ),
          ),
          IndexedStack(
            index: _current,
            children: [
              SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 16),
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(
                        top: 16,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Featured',
                            style: AppStyle.text_18_700,
                          ),
                          Row(
                            children: [
                              Text(
                                'View all',
                                style: AppStyle.lightText_14,
                              ),
                              Icon(
                                Icons.navigate_next_rounded,
                                color: AppColors.lightGray,
                                size: 16,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Stack(
                      children: [
                        Container(
                          width: 250,
                          decoration: const BoxDecoration(
                              color: AppColors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Column(
                            children: [
                              SizedBox(
                                width: 250,
                                height: 135,
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.vertical(
                                      top: Radius.circular(10)),
                                  child: Image.network(
                                    'https://cdn.pixabay.com/photo/2017/03/23/19/57/asparagus-2169305_1280.jpg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 12),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Toronto Restaurant',
                                      style: AppStyle.lightText_16_700,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          right: 65, top: 8),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          ImageHelper.loadFromAsset(
                                              AppAssets.star_icon),
                                          const Text(
                                            '5.0',
                                            style: AppStyle.lightText_13_500,
                                          ),
                                          const Text(
                                            '(99+)',
                                            style: AppStyle.lightText_13_400,
                                          ),
                                          const Text(
                                            '|',
                                            style: AppStyle.lightText_13_400,
                                          ),
                                          const Text(
                                            'Western',
                                            style: AppStyle.lightText_13_400,
                                          ),
                                          const Text(
                                            '|',
                                            style: AppStyle.lightText_13_400,
                                          ),
                                          const Text(
                                            '50m',
                                            style: AppStyle.lightText_13_400,
                                          )
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const Wrap(
                                        spacing: 4,
                                        runSpacing: 4,
                                        children: [
                                          CustomLabelBicycle(),
                                          CustomLabelTakeAway(),
                                        ])
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: 111,
                          right: 12,
                          child: Container(
                            width: 44,
                            height: 44,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.primaryColor),
                            child: Center(
                                child: Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '20-30',
                                    style: AppStyle.text_13_600
                                        .copyWith(fontSize: 12),
                                  ),
                                  Text(
                                    'min',
                                    style: AppStyle.text_13_600
                                        .copyWith(fontSize: 10),
                                  ),
                                ],
                              ),
                            )),
                          ),
                        ),
                        Positioned(
                          top: 12,
                          right: 12,
                          child: Container(
                            width: 28,
                            height: 14,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: AppColors.white),
                            child: Center(
                              child: Text(
                                '\$\$\$',
                                style:
                                    AppStyle.text_18_700.copyWith(fontSize: 10),
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                color: const Color.fromARGB(255, 0, 0, 0),
                child: const Center(child: Text("Container 2")),
              ),
              Container(
                color: const Color.fromARGB(255, 4, 255, 0),
                child: const Center(child: Text("Container 3")),
              ),
              Container(
                color: AppColors.primaryColor,
                child: const Center(child: Text("Container 4")),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
