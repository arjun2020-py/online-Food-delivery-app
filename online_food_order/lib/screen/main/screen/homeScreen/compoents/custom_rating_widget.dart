import 'package:flutter/material.dart';

import '../../../../../ utils/custom_color.dart';
import '../home_screen_controller.dart';

class CustomRatingWidget extends StatelessWidget {
  const CustomRatingWidget(
      {super.key, required this.homeController, required this.index});

  final HomeScreenController homeController;
  final int index;
  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
            text: homeController.popularFood[index].rating.toString(),
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: CustomColor().blackColor),
            children: [
          TextSpan(
              text: '(',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: CustomColor().blackColor)),
          TextSpan(
              text: homeController.popularFood[index].count.toString(),
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: CustomColor().blackColor)),
          TextSpan(
              text: ')',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: CustomColor().blackColor))
        ]));
  }
}
