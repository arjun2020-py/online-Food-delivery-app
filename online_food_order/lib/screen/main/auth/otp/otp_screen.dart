import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_food_order/%20utils/custom_color.dart';
import 'package:online_food_order/%20utils/custom_image.dart';
import 'package:online_food_order/customWidget/custom_elev_butt_widget.dart';
import 'package:online_food_order/customWidget/custom_text_widget.dart';
import 'package:online_food_order/customWidget/cutom_image_widget.dart';
import 'package:online_food_order/interlization/interlization.dart';

import 'compoents/custom_otp_widget.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor().appMainColor,
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Center(
            child: customImageWidget(
                customImage: CustomImage().otpImage,
                width: MediaQuery.sizeOf(context).width * 0.7),
          ),
          CustomTextWidget(
              fontSize: 25,
              fontWeight: FontWeight.w400,
              text: LocalName.phoneVerfication.tr),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 0),
            child: CustomTextWidget(
                fontSize: 18,
                fontWeight: FontWeight.w300,
                text: LocalName.enterYourVerficationCode.tr),
          ),
          SizedBox(
            height: 20,
          ),
          CustomOtpWidget(),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              CustomElevButton(
                  text: LocalName.resend.tr,
                  onpressed: () {},
                  textColor: CustomColor().blackColor,
                  buttonBgColor: CustomColor().whiteColor,
                  buttonRadius: 18,
                  sizedBoxWidth: 0.4,
                  sizedBoxHieght: 0.15),
              SizedBox(
                width: 20,
              ),
              CustomElevButton(
                  text: LocalName.verify.tr,
                  onpressed: () {},
                  textColor: CustomColor().whiteColor,
                  buttonBgColor: CustomColor().buttonColor,
                  buttonRadius: 18,
                  sizedBoxWidth: 0.4,
                  sizedBoxHieght: 0.15)
            ],
          )
        ],
      ),
    );
  }
}
