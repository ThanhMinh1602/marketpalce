import 'package:flutter/material.dart';
import 'package:marketpalce/constants/app_color.dart';
import 'package:marketpalce/constants/app_style.dart';
import 'package:marketpalce/screens/HomeScreens/delivery_screen.dart';

class BrowseScreen extends StatelessWidget {
  const BrowseScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(top: 16),
      child: Column(
        children: [
          SizedBox(
            height: 64,
            child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                scrollDirection: Axis.horizontal,
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(right: 10),
                    width: 98,
                    child: Stack(alignment: Alignment.center, children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          'https://cdn.pixabay.com/photo/2017/12/01/16/14/cookies-2991174_1280.jpg',
                          fit: BoxFit.cover,
                          height: 64,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: AppColors.withOpacity(Colors.black, 0.5),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      Text(
                        'Healthy',
                        style: AppStyle.lightText_14.copyWith(
                            color: AppColors.white,
                            fontWeight: FontWeight.w700),
                      )
                    ]),
                  );
                }),
          ),
          const DeliceryScreen()
        ],
      ),
    );
  }
}
