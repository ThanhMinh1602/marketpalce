// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:marketpalce/constants/app_assets.dart';
import 'package:marketpalce/constants/app_color.dart';
import 'package:marketpalce/constants/app_style.dart';
import 'package:marketpalce/helpers/image_helper.dart';
import 'package:marketpalce/screens/HomeScreens/WidgetHome/detail_widget.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    Key? key,
    required this.width,
    required this.height,
    required this.price,
    required this.margin,
    required this.listItemLabel,
    this.deliveryRecommendations,
  }) : super(key: key);
  final double width;
  final double height;
  final String price;
  final EdgeInsetsGeometry? margin;
  final List<Widget> listItemLabel;
  final List<Widget>? deliveryRecommendations;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: margin,
          width: width,
          decoration: const BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Column(
            children: [
              SizedBox(
                width: width,
                height: height,
                child: ClipRRect(
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(10)),
                  child: Image.network(
                    'https://cdn.pixabay.com/photo/2014/11/05/15/57/salmon-518032_1280.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Toronto Restaurant',
                      style: AppStyle.lightText_16_700,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: DetailWidget(),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Wrap(spacing: 4, runSpacing: 4, children: listItemLabel)
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
                shape: BoxShape.circle, color: AppColors.primaryColor),
            child: Center(
                child: Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '20-30',
                    style: AppStyle.text_13_600.copyWith(fontSize: 12),
                  ),
                  Text(
                    'min',
                    style: AppStyle.text_13_600.copyWith(fontSize: 10),
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
                borderRadius: BorderRadius.circular(5), color: AppColors.white),
            child: Center(
              child: Text(
                price,
                style: AppStyle.text_18_700.copyWith(fontSize: 10),
              ),
            ),
          ),
        ),
        ...?deliveryRecommendations
      ],
    );
  }
}
