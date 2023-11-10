import 'package:flutter/material.dart';
import 'package:oktoast/oktoast.dart';
import 'package:online_food_order/%20utils/custom_color.dart';

commonOkToast(String content) {
  showToast(content,
      position: ToastPosition.bottom,
      backgroundColor: CustomColor().blackColor.withOpacity(0.8),
      radius: 10,
      textPadding: EdgeInsets.all(10),
      textStyle: TextStyle(fontSize: 18, color: CustomColor().whiteColor));
}
