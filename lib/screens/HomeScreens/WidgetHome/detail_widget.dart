import 'package:flutter/material.dart';
import 'package:marketpalce/constants/app_assets.dart';
import 'package:marketpalce/constants/app_style.dart';
import 'package:marketpalce/helpers/image_helper.dart';

class DetailWidget extends StatelessWidget {
  const DetailWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ImageHelper.loadFromAsset(AppAssets.star_icon),
        const SizedBox(
          width: 4,
        ),
        const Text(
          '5.0',
          style: AppStyle.lightText_13_500,
        ),
        const SizedBox(
          width: 4,
        ),
        const Text(
          '(99+)',
          style: AppStyle.lightText_13_400,
        ),
        const SizedBox(
          width: 4,
        ),
        const Text(
          '|',
          style: AppStyle.lightText_13_400,
        ),
        const SizedBox(
          width: 4,
        ),
        const Text(
          'Western',
          style: AppStyle.lightText_13_400,
        ),
        const SizedBox(
          width: 4,
        ),
        const Text(
          '|',
          style: AppStyle.lightText_13_400,
        ),
        const SizedBox(
          width: 4,
        ),
        const Text(
          '50m',
          style: AppStyle.lightText_13_400,
        )
      ],
    );
  }
}
