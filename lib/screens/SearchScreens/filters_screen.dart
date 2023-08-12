import 'package:flutter/material.dart';
import 'package:marketpalce/constants/app_color.dart';
import 'package:marketpalce/constants/app_style.dart';
import 'package:marketpalce/screens/SearchScreens/WidgetSearch/distance_slider.dart';
import 'package:marketpalce/screens/SearchScreens/WidgetSearch/recommend_widget.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  @override
  Widget build(BuildContext context) {
    List<String> listType = ['Delivery', 'Pick-up', 'Dine-in'];
    List<String> listCuisine = [
      'Vegetarian',
      'Burgers',
      'Chinese',
      'Salad',
      'Dessert',
      'Western',
      'Asian'
    ];
    List<String> listPrice = ['Any', '\$', '\$\$', '\$\$\$', '\$\$\$\$'];
    List<String> listSort = ['Price', 'Rating', 'Distance'];
    double _slidervalue = 0.0;
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: Icon(
                Icons.close,
                color: AppColors.T_title_black,
              ),
            ),
          )
        ],
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.white,
        title: Text(
          'Filters',
          style: AppStyle.text_18_700.copyWith(fontSize: 28),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(children: [
          RecommendWidget(text: 'Type', children: [
            for (int i = 0; i < listType.length; i++)
              RecommendItem(text: listType[i]),
          ]),
          const SizedBox(
            height: 32,
          ),
          RecommendWidget(text: 'Cuisine', children: [
            for (int i = 0; i < listCuisine.length; i++)
              RecommendItem(text: listCuisine[i]),
          ]),
          const SizedBox(
            height: 32,
          ),
          RecommendWidget(text: 'Distance', children: [SliderLabelWidget()]),
          const SizedBox(
            height: 32,
          ),
          RecommendWidget(text: 'Price', children: [
            for (int i = 0; i < listPrice.length; i++)
              RecommendItem(text: listPrice[i]),
          ]),
          const SizedBox(
            height: 32,
          ),
          RecommendWidget(text: 'Sort', children: [
            for (int i = 0; i < listSort.length; i++)
              RecommendItem(text: listSort[i])
          ]),
          const SizedBox(
            height: 27,
          ),
          SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primaryColor,
                    foregroundColor: AppColors.white),
                onPressed: () {},
                child: Text(
                  'Show 83 Restaurants',
                  style: AppStyle.lightText_16_700
                      .copyWith(color: AppColors.white),
                )),
          )
        ]),
      ),
    );
  }
}
