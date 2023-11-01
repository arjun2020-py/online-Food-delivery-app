import 'dart:ui';

import 'package:flutter/material.dart';


class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget({
    super.key,
    required this.fontSize,
    required this.fontWeight,
    required this.text,
    this.color
  });
final double fontSize;
final FontWeight fontWeight;
final String  text;
final Color? color;
  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color:color 
    ),);
  }
}