import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../ utils/custom_color.dart';
import '../../../../../customWidget/custom_text_widget.dart';
import '../../../../../interlization/interlization.dart';

class CalualatePriceWidget extends StatelessWidget {
  const CalualatePriceWidget(
      {super.key, required this.text, required this.price, this.color,this.priceColor});
  final String text;
  final String price;
  final Color? color;
  final Color? priceColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomTextWidget(fontSize: 18, fontWeight: FontWeight.w500, text: text),
        Spacer(),
        Row(
          children: [
            Icon(
              Icons.currency_rupee_outlined,
              size: 15,
              color:priceColor ?? CustomColor().blackColor,
            ),
            CustomTextWidget(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                text: price,
                color: color ?? CustomColor().blackColor),
          ],
        ),
      ],
    );
  }
}
