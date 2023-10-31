import 'package:flutter/material.dart';

import '../ utils/custom_color.dart';

class customTextfromFiledWidget extends StatelessWidget {
  customTextfromFiledWidget(
      {super.key,
      required this.hintText,
      required this.validator,
      required this.keyboardType,
      required this.obscureText,
      required this.controller
      });
  final String hintText;
  String? Function(String?)? validator;
  final TextInputType keyboardType;
  final bool obscureText;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
      child: TextFormField(
        controller:controller ,
        textInputAction: TextInputAction.next,
        obscureText: obscureText,
        keyboardType: keyboardType,
        validator: validator,
        decoration: InputDecoration(
            hintText: hintText,
            filled: true,
            fillColor: CustomColor().whiteColor,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide:
                    BorderSide(width: 2, color: CustomColor().whiteColor)),
            focusedBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(width: 2, color: CustomColor().whiteColor))),
      ),
    );
  }
}
