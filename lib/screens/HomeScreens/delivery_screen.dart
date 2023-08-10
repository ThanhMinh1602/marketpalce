// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:marketpalce/screens/HomeScreens/WidgetHome/custom_card.dart';
import 'package:marketpalce/screens/HomeScreens/WidgetHome/custom_featured.dart';
import 'package:marketpalce/screens/HomeScreens/WidgetHome/custom_label.dart';
import 'package:marketpalce/screens/HomeScreens/WidgetHome/delivery_recommendations.dart';

class DeliceryScreen extends StatelessWidget {
  const DeliceryScreen({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
                    deliveryRecommendations: [DeliveryRecommendations()],
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
