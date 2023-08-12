// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:marketpalce/constants/app_color.dart';
import 'package:marketpalce/constants/app_style.dart';

//Recommend box
class RecommendWidget extends StatelessWidget {
  const RecommendWidget({
    Key? key,
    required this.children,
    required this.text,
    this.iconData,
  }) : super(key: key);

  final List<Widget> children;
  final String text;
  final IconData? iconData;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: AppStyle.lightText_16_700,
            ),
            Icon(iconData)
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Wrap(
          spacing: 10,
          runSpacing: 10,
          children: children,
        ),
      ],
    );
  }
}

// Recommend item
class RecommendItem extends StatelessWidget {
  const RecommendItem({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.lightBackground,
          borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
        child: Text(
          text,
          style: AppStyle.lightText_13_500.copyWith(fontSize: 14),
        ),
      ),
    );
  }
}
