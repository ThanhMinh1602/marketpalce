import 'package:flutter/material.dart';
import 'package:marketpalce/constants/app_color.dart';

class DeliveryRecommendations extends StatelessWidget {
  const DeliveryRecommendations({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: 0,
        top: 8,
        child: Container(
          decoration: const BoxDecoration(
              color: AppColors.purplePrimary,
              borderRadius: BorderRadius.horizontal(right: Radius.circular(3))),
          child: const Padding(
            padding: EdgeInsets.all(4.0),
            child: Text(
              'Recommendations',
              style: (TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  color: AppColors.white)),
            ),
          ),
        ));
  }
}
