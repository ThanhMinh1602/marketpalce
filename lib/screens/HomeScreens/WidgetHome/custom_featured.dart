import 'package:flutter/material.dart';
import 'package:marketpalce/constants/app_color.dart';
import 'package:marketpalce/constants/app_style.dart';

class CustomFeatured extends StatelessWidget {
  const CustomFeatured({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        top: 16,
        bottom: 10,
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
    );
  }
}
