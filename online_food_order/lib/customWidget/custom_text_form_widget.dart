import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../ utils/custom_color.dart';
import '../interlization/interlization.dart';

class customTextfromFiledWidget extends StatelessWidget {
  const customTextfromFiledWidget({
    super.key,
    required this.hintText,

  });
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
            hintText:hintText,
            fillColor: CustomColor().whiteColor,
            enabledBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(width: 2, color: CustomColor().whiteColor)),
            focusedBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(width: 2, color: CustomColor().whiteColor))),
      ),
    );
  }
}
