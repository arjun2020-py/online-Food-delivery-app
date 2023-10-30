import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_food_order/%20utils/custom_color.dart';
import 'package:online_food_order/%20utils/custom_image.dart';
import 'package:online_food_order/interlization/interlization.dart';

import '../../../compoents/custom_elev_butt_widget.dart';
import '../../../compoents/custom_text_widget.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor().appMainColor,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 80,
            ),
            Image.asset(
              CustomImage().appIconImage,
              width: MediaQuery.sizeOf(context).width * 1,
            ),
            SizedBox(height: 40),
            CustomTextWidget(
              text: LocalName.onlineFoodDelivery.tr,
              fontSize: 30,
              fontWeight: FontWeight.w400,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 38, right: 20, top: 10),
              child: CustomTextWidget(
                  text: LocalName.paragrphText.tr,
                  fontSize: 18,
                  fontWeight: FontWeight.normal),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.2,
            ),
            CustomElevButton(
              sizedBoxWidth: 0.8,
              sizedBoxHieght: 0.15,
              text: LocalName.getStarted.tr,
              onpressed: () {},
              textColor: CustomColor().whiteColor,
              buttonBgColor: CustomColor().buttonColor,
              buttonRadius: 25,
            )
          ],
        ),
      ),
    );
  }
}
