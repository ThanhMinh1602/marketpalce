import 'package:flutter/material.dart';
import 'package:marketpalce/constants/app_color.dart';

class SliderLabelWidget extends StatefulWidget {
  @override
  _SliderLabelWidgetState createState() => _SliderLabelWidgetState();
}

class _SliderLabelWidgetState extends State<SliderLabelWidget> {
  int indexTop = 0;
  double valueBottom = 20;

  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: const SliderThemeData(
        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
        trackHeight: 5,
        activeTickMarkColor: Colors.transparent,
        inactiveTickMarkColor: Colors.transparent,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildSliderTopLabel(),
        ],
      ),
    );
  }

  Widget buildSliderTopLabel() {
    final labels = ['0', '1', '2', '3', '4', '5'];

    return Column(
      children: [
        Slider(
          value: indexTop.toDouble(),
          label: indexTop.round().toString() + "km",
          inactiveColor: AppColors.lightGray,
          min: 0,
          max: labels.length - 1.0,
          thumbColor: AppColors.white,
          divisions: labels.length - 1,
          onChanged: (value) => setState(() => this.indexTop = value.toInt()),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: labels.asMap().entries.map((entry) {
              final index = entry.key;
              final label = entry.value;
              const selectedColor = Colors.black;
              const unselectedColor = AppColors.lightGray;
              final isSelected = index <= indexTop;
              final color = isSelected ? selectedColor : unselectedColor;

              return buildLabel(label: label, color: color, width: 30);
            }).toList(),
          ),
        ),
      ],
    );
  }

  Widget buildLabel({
    required String label,
    required double width,
    required Color color,
  }) =>
      SizedBox(
        width: width,
        child: Text(
          label,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ).copyWith(color: color),
        ),
      );
}
