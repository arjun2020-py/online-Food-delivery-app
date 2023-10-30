import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_food_order/%20utils/custom_color.dart';
import 'package:online_food_order/customWidget/custom_elev_butt_widget.dart';
import 'package:online_food_order/customWidget/custom_text_widget.dart';

import '../../../../../ utils/custom_image.dart';
import '../../../../../customWidget/custom_text_form_widget.dart';
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
          SizedBox(
            height: 10,
          ),
          CustomTextWidget(
              fontSize: 20,
              fontWeight: FontWeight.normal,
              text: LocalName.loginForm.tr),
          SizedBox(
            height: 10,
          ),
          customTextfromFiledWidget(
            hintText: LocalName.email.tr,
          ),
          customTextfromFiledWidget(hintText: LocalName.passwrod.tr),
          SizedBox(
            height: 20,
          ),
          CustomElevButton(
              text: LocalName.login.tr,
              onpressed: () {},
              textColor: CustomColor().whiteColor,
              buttonBgColor: CustomColor().buttonColor,
              buttonRadius: 25,
              sizedBoxWidth: 0.8,
              sizedBoxHieght: 0.15)
        ],
      ),
    );
  }
}
