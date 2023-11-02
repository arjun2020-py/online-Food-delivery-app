import 'dart:ui';

import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget(
      {super.key,
      required this.fontSize,
      required this.fontWeight,
      required this.text,
      this.color,
      this.textAlign
      });
  final double fontSize;
  final FontWeight fontWeight;
  final String text;
  final Color? color;
  final TextAlign? textAlign;
  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: textAlign ,
      text,
      style:
          TextStyle(fontSize: fontSize, fontWeight: fontWeight, color: color),
    );
  }
}
