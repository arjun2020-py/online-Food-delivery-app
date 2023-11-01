import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_food_order/%20utils/custom_color.dart';
import 'package:online_food_order/%20utils/custom_image.dart';
import 'package:online_food_order/customWidget/custom_text_widget.dart';
import 'package:online_food_order/interlization/interlization.dart';

import 'compoents/card_profile_edit.dart';
import 'compoents/custom_setting_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor().appMainColor,
      appBar: AppBar(
        backgroundColor: CustomColor().transparentColor,
        leading:
            IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios_new)),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Center(
                child: CustomTextWidget(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    text: LocalName.account.tr),
              ),
              SizedBox(
                height: 15,
              ),
              customCardProfileEdit(),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 240),
                child: CustomTextWidget(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    text: LocalName.settings.tr),
              ),
              customSettingWidget(
                icon: Icons.notifications,
                text: LocalName.notifcation.tr,
              ),
              customSettingWidget(
                  icon: Icons.language, text: LocalName.languages.tr),
              customSettingWidget(
                  icon: Icons.currency_rupee_rounded,
                  text: LocalName.currency.tr),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Divider(
                  thickness: 1,
                  color: CustomColor().blackColor,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 240),
                child: CustomTextWidget(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    text: LocalName.others.tr),
              ),
              customSettingWidget(
                  icon: Icons.payment_rounded,
                  text: LocalName.paymentMenthod.tr),
              customSettingWidget(
                  icon: Icons.privacy_tip_rounded,
                  text: LocalName.privacyPolicy.tr),
              customSettingWidget(
                  icon: Icons.admin_panel_settings,
                  text: LocalName.termsOfUse.tr),
              customSettingWidget(
                  icon: Icons.logout, text: LocalName.logout.tr),
              customSettingWidget(
                  icon: Icons.shopping_cart, text: LocalName.orders.tr)
            ],
          ),
        ],
      ),
    );
  }
}
