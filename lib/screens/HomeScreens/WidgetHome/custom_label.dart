// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:marketpalce/constants/app_assets.dart';

import 'package:marketpalce/constants/app_color.dart';
import 'package:marketpalce/constants/app_style.dart';
import 'package:marketpalce/helpers/image_helper.dart';

class CustomLabel extends StatelessWidget {
  const CustomLabel({
    Key? key,
    required this.width,
    required this.color,
    required this.text,
    required this.icon,
  }) : super(key: key);
  final double width;
  final Color color;
  final String text;
  final String icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 24,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: AppColors.withOpacity(color, 0.2)),
      child: Center(
        child: Row(
          children: [
            Text(text,
                style: AppStyle.lightText_14_600.copyWith(
                  color: color,
                )),
            const SizedBox(
              width: 4,
            ),
            ImageHelper.loadFromAsset(icon)
          ],
        ),
      ),
    );
  }
}

//Bicycle
class CustomLabelBicycle extends StatelessWidget {
  const CustomLabelBicycle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomLabel(
      color: AppColors.primaryColor,
      width: 117,
      text: 'Quick \$100+',
      icon: AppAssets.bicycle_icon,
    );
  }
}

//Book
class CustomLabelBook extends StatelessWidget {
  const CustomLabelBook({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomLabel(
      color: AppColors.purplePrimary,
      width: 70,
      text: 'Book',
      icon: AppAssets.book_icon,
    );
  }
}

//Take Away
class CustomLabelTakeAway extends StatelessWidget {
  const CustomLabelTakeAway({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomLabel(
      color: AppColors.orangePrimary,
      width: 105,
      text: 'Take Away',
      icon: AppAssets.cart_icon,
    );
  }
}

//City
class CustomLabelCity extends StatelessWidget {
  const CustomLabelCity({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomLabel(
      color: AppColors.greenPrimary,
      width: 62,
      text: 'City',
      icon: AppAssets.truck_icon,
    );
  }
}

//Voucher 25%
class CustomLabelVoucher25 extends StatelessWidget {
  const CustomLabelVoucher25({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomLabel(
      color: AppColors.redPrimary,
      width: 119,
      text: 'Staff 25% off',
      icon: AppAssets.voucher_icon,
    );
  }
}

//Voucher 50%
class CustomLabelVoucher50 extends StatelessWidget {
  const CustomLabelVoucher50({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomLabel(
      color: AppColors.redPrimary,
      width: 167,
      text: 'Tasting Voucher \$50',
      icon: AppAssets.voucher_icon,
    );
  }
}
