import 'package:flutter/material.dart';
import 'package:marketpalce/constants/app_color.dart';
import 'package:marketpalce/constants/app_style.dart';
import 'package:marketpalce/screens/HomeScreens/WidgetHome/custom_label.dart';
import 'package:marketpalce/screens/HomeScreens/WidgetHome/detail_widget.dart';

class BookScreen extends StatelessWidget {
  const BookScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          padding: const EdgeInsets.only(bottom: 16, left: 16, right: 16),
          itemCount: 6,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.only(top: 16),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 80,
                      height: 80,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          'https://cdn.pixabay.com/photo/2015/03/26/23/09/cake-pops-693645_1280.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Magic House (Nanshan Yuehai Branch)',
                            style: AppStyle.lightText_16_700,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          DetailWidget(),
                          SizedBox(
                            height: 12,
                          ),
                          CustomLabelBook()
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
