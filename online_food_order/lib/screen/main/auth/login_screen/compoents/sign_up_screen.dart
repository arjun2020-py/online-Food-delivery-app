import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:online_food_order/customWidget/cutom_image_widget.dart';

import '../../../../../ utils/custom_color.dart';
import '../../../../../ utils/custom_image.dart';
import '../../../../../customWidget/custom_elev_butt_widget.dart';
import '../../../../../customWidget/custom_text_form_widget.dart';
import '../../../../../customWidget/custom_text_widget.dart';
import '../../../../../interlization/interlization.dart';
import '../login_signup_controller.dart';

class SignUpScreen extends StatelessWidget {
  @override
  final authController = Get.put(LoginSiginupController());

  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          alignment: Alignment.center,
          child: Form(
            key: authController.formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                customImageWidget(
                  customImage: CustomImage().appIconImage,
                  width: MediaQuery.sizeOf(context).width * 0.7,
                ),
                SizedBox(
                  height: 10,
                ),
                CustomTextWidget(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    text: LocalName.signupForm.tr),
                SizedBox(
                  height: 10,
                ),
                customTextfromFiledWidget(
                  controller: authController.emailController,
                  obscureText: false,
                  keyboardType: TextInputType.text,
                  validator: (value) =>
                      authController.pleaseEnterVaildEmail(value!),
                  hintText: LocalName.email.tr,
                ),
                customTextfromFiledWidget(
                    controller: authController.phoneController,
                    obscureText: false,
                    keyboardType: TextInputType.phone,
                    validator: (value) =>
                        authController.pleaseEnterVaildPhone(value!),
                    hintText: LocalName.phone.tr),
                customTextfromFiledWidget(
                    controller: authController.passwrodController,
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    validator: (value) =>
                        authController.pleaseEnterVaildPasswrod(value!),
                    hintText: LocalName.passwrod.tr),
                SizedBox(
                  height: 20,
                ),
                CustomElevButton(
                    text: LocalName.signUp.tr,
                    onpressed: () {
                      if (authController.formKey.currentState!.validate()) {
                        Get.back();
                        authController.clearTextedtingController();
                      }
                    },
                    textColor: CustomColor().whiteColor,
                    buttonBgColor: CustomColor().buttonColor,
                    buttonRadius: 25,
                    sizedBoxWidth: 0.9,
                    sizedBoxHieght: 0.15)
              ],
            ),
          ),
        ),
      ],
    );
  }
}
