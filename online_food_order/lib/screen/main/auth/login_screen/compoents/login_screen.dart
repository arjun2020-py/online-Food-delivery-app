import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_food_order/%20utils/custom_color.dart';
import 'package:online_food_order/api_utils/custom_tost_widget.dart';
import 'package:online_food_order/customWidget/custom_elev_butt_widget.dart';
import 'package:online_food_order/customWidget/custom_text_widget.dart';
import 'package:online_food_order/customWidget/cutom_image_widget.dart';

import '../../../../../ utils/custom_image.dart';
import '../../../../../customWidget/custom_text_form_widget.dart';
import '../../../../../interlization/interlization.dart';
import '../../otp/otp_screen.dart';
import '../login_signup_controller.dart';

class LoginScreen extends StatelessWidget {
  final authController = Get.put(LoginSiginupController());
  @override
  Widget build(BuildContext context) {
    return Container(
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
                text: LocalName.loginForm.tr),
            SizedBox(
              height: 10,
            ),
            customTextfromFiledWidget(
              controller: authController.userController,
              obscureText: false,
              keyboardType: TextInputType.text,
              validator: (value) =>
                  authController.pleaseEnterVaildEmail(value!),
              hintText: LocalName.name.tr,
            ),
            // customTextfromFiledWidget(
            //     controller: authController.passwrodController,
            //     obscureText: true,
            //     keyboardType: TextInputType.text,
            //     validator: (value) =>
            //         authController.pleaseEnterVaildPasswrod(value!),
            //     hintText: LocalName.passwrod.tr),
            SizedBox(
              height: 20,
            ),
            CustomElevButton(
                text: LocalName.login.tr,
                onpressed: () {
                  print('_________button');
                  if (authController.formKey.currentState!.validate()) {
                    authController.clearTextedtingController();
                    Get.to(OtpScreen());
                    commonOkToast(LocalName.sucess.tr);
                    // authController.onScreenLogin(
                    //     authController.userController.text,
                    //     authController.passwrodController.text);
                  }
                },
                textColor: CustomColor().whiteColor,
                buttonBgColor: CustomColor().buttonColor,
                buttonRadius: 25,
                sizedBoxWidth: 0.9,
                sizedBoxHieght: 0.15),
          ],
        ),
      ),
    );
  }
}
