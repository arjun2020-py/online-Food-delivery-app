import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../interlization/interlization.dart';

class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget({
    super.key,
    required this.fontSize,
    required this.fontWeight,
    required this.text
  });
final double fontSize;
final FontWeight fontWeight;
final String  text;
  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight
    ),);
  }
}