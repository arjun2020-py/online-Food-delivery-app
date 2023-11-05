import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../ utils/custom_color.dart';
import '../../../../../interlization/interlization.dart';

class homeSerchWidget extends StatelessWidget {
  const homeSerchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.search,
              size: 30,
            ),
            hintText: LocalName.searchFood.tr,
            filled: true,
            fillColor: CustomColor().whiteColor,
            enabledBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(width: 2, color: CustomColor().whiteColor),
                borderRadius: BorderRadius.circular(40)),
            focusedBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(width: 2, color: CustomColor().whiteColor),
                borderRadius: BorderRadius.circular(40))),
      ),
    );
  }
}
