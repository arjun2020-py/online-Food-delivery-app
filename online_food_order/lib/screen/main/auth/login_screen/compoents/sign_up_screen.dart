import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../ utils/custom_color.dart';
import '../../../../../ utils/custom_image.dart';
import '../../../../../customWidget/custom_elev_butt_widget.dart';
import '../../../../../customWidget/custom_text_form_widget.dart';
import '../../../../../customWidget/custom_text_widget.dart';
import '../../../../../interlization/interlization.dart';

class SignUpScreen extends StatelessWidget {
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
              text: LocalName.signupForm.tr),
          SizedBox(
            height: 10,
          ),
          customTextfromFiledWidget(
            hintText: LocalName.email.tr,
          ),
          customTextfromFiledWidget(hintText: LocalName.phone.tr),
          customTextfromFiledWidget(hintText: LocalName.passwrod.tr),
          SizedBox(
            height: 20,
          ),
          CustomElevButton(
              text: LocalName.signUp.tr,
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
