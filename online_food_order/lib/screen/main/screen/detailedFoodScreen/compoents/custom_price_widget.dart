import 'package:flutter/material.dart';

import '../../../../../ utils/custom_color.dart';
import '../../../../../customWidget/custom_text_widget.dart';
import '../../homeScreen/home_screen_controller.dart';

class CustomFoodPriceWidget extends StatelessWidget {
  const CustomFoodPriceWidget(
      {super.key, required this.homeController, required this.index});

  final HomeScreenController homeController;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.currency_rupee,
          color: CustomColor().buttonColor,
          size: 20,
        ),
        CustomTextWidget(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            text: homeController.popularFood[index].price.toString()),
        SizedBox(
          width: 10,
        )
      ],
    );
  }
}
