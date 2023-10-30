import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_food_order/%20utils/custom_color.dart';

import '../../../../../ utils/custom_image.dart';
import '../../../../../interlization/interlization.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            CustomImage().appIconImage,
            width: MediaQuery.sizeOf(context).width * 0.7,
          ),
          Text('Login Form'),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                 hintText: LocalName.email.tr,
                  fillColor: CustomColor().whiteColor,
                  enabledBorder: OutlineInputBorder(

                      borderSide:
                          BorderSide(width: 2, color: CustomColor().whiteColor)),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 2, color: CustomColor().whiteColor))),
            ),
          )
        ],
      ),
    );
  }
}
