// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:marketpalce/constants/app_assets.dart';
import 'package:marketpalce/constants/app_color.dart';
import 'package:marketpalce/constants/app_style.dart';
import 'package:marketpalce/helpers/image_helper.dart';

import 'package:marketpalce/screens/HomeScreens/WidgetHome/custom_card.dart';
import 'package:marketpalce/screens/HomeScreens/WidgetHome/custom_featured.dart';
import 'package:marketpalce/screens/HomeScreens/WidgetHome/custom_label.dart';

class TakeAwayScreen extends StatelessWidget {
  const TakeAwayScreen({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.only(top: 16, left: 16, right: 16),
            width: double.infinity,
            height: 127,
            decoration: const BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Pancake  Restaurant',
                  style: AppStyle.lightText_13_500,
                ),
                const SizedBox(
                  height: 10.5,
                ),
                const Divider(
                  height: 0,
                  color: AppColors.lightGray,
                ),
                const SizedBox(
                  height: 7.5,
                ),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      width: 80,
                      height: 70,
                      decoration: BoxDecoration(
                          color: AppColors.withOpacity(
                              AppColors.primaryColor, 0.1),
                          borderRadius: BorderRadius.circular(5)),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ImageHelper.loadFromAsset(
                                AppAssets.icon_oickup_cart),
                            Text(
                              'Take Away',
                              style: AppStyle.lightText_13_500.copyWith(
                                fontSize: 12,
                                color: AppColors.primaryColor,
                              ),
                            )
                          ]),
                    ),
                    const SizedBox(
                      width: 31,
                    ),
                  ],
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: CustomFeatured(),
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.only(left: 8),
            height: 235,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10, // Adjust this value based on your requirement
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.0,
                  ),
                  child: CustomCard(
                    deliveryRecommendations: [],
                    margin: null,
                    width: 250,
                    height: 134,
                    price: '\$\$\$',
                    listItemLabel: [
                      CustomLabelBicycle(),
                      CustomLabelTakeAway()
                    ],
                  ),
                );
              },
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: CustomFeatured(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                for (int i = 0; i <= 3; i++)
                  const CustomCard(
                    margin: EdgeInsets.only(bottom: 16),
                    width: double.infinity,
                    height: 178,
                    price: '\$\$',
                    listItemLabel: [
                      CustomLabelBicycle(),
                      CustomLabelTakeAway(),
                      CustomLabelBook(),
                      CustomLabelVoucher50()
                    ],
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
