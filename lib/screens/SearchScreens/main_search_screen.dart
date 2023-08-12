import 'package:flutter/material.dart';
import 'package:marketpalce/constants/app_assets.dart';
import 'package:marketpalce/constants/app_color.dart';
import 'package:marketpalce/constants/app_style.dart';
import 'package:marketpalce/helpers/image_helper.dart';

class MainSearchScreen extends StatefulWidget {
  MainSearchScreen({super.key});

  @override
  State<MainSearchScreen> createState() => _MainSearchScreenState();
}

class _MainSearchScreenState extends State<MainSearchScreen> {
  List<String> list = [
    'Coffee',
    'Bakery',
    'Pan cake',
    'Roasted Crab with Salt ',
    'Peking Duck'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        toolbarHeight: 100,
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
                    Expanded(
                      child: SizedBox(
                        height: 34,
                        child: TextFormField(
                          decoration: const InputDecoration(
                              hintText: 'Search',
                              hintStyle: TextStyle(color: AppColors.lightGray),
                              filled: true,
                              fillColor: AppColors.white,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 9),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                  borderSide: BorderSide.none),
                              prefixIcon: Icon(
                                Icons.search,
                                color: AppColors.lightGray,
                                size: 25,
                              )),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          'Cancel',
                          style: AppStyle.lightText_13_400.copyWith(
                            fontSize: 14,
                            color: AppColors.white,
                          ),
                        ))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // RecommendWidget(
            //   text: 'Hot',
            //   children: [
            //     for (int item = 0; item < list.length; item++)
            //       RecommendItem(text: list[item]),
            //   ],
            // ),
            // const SizedBox(
            //   height: 32,
            // ),
            // RecommendWidget(
            //   iconData: Icons.delete_outlined,
            //   text: 'History',
            //   children: [
            //     for (int item = 0; item < list.length; item++)
            //       RecommendItem(text: list[item]),
            //   ],
            // )

            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '12 Results',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.T_title_black),
                ),
                Row(
                  children: [
                    Text(
                      'Explore by locations',
                      style: AppStyle.lightText_14_400,
                    ),
                    Icon(
                      Icons.navigate_next_rounded,
                      size: 20,
                      color: AppColors.lightGray,
                    )
                  ],
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16),
              height: 1, // Độ dày của đường kẻ
              color: const Color.fromARGB(44, 0, 0, 0),
            ),
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        width: 32,
                        height: 32,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: AppColors.lightGray, width: 1)),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://cdn.pixabay.com/photo/2023/04/13/11/27/hedgehog-7922370_640.jpg'),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 6,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Baikohken',
                                style: AppStyle.lightText_16_700.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          Text(
                              'Food Court near Gate 40-80, Departures Level (L6)',
                              style: AppStyle.lightText_13_400
                                  .copyWith(fontSize: 10)),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: Text(
                              '20-30min',
                              style: AppStyle.lightText_13_400.copyWith(
                                  fontSize: 10, color: AppColors.T_title_black),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}
