import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_food_order/%20utils/custom_color.dart';
import 'package:online_food_order/customWidget/custom_elev_butt_widget.dart';
import 'package:online_food_order/customWidget/custom_text_widget.dart';
import 'package:online_food_order/interlization/interlization.dart';
import 'package:online_food_order/screen/main/screen/homeScreen/model/home_model.dart';

import '../homeScreen/compoents/custom_rating_widget.dart';
import '../homeScreen/home_screen_controller.dart';
import 'compoents/custom_add_remove_widget.dart';
import 'compoents/custom_price_widget.dart';

class DetailedFoodScreen extends StatelessWidget {
  const DetailedFoodScreen(
      {super.key,
      required this.homeController,
      required this.index,
      required this.popularFood});
  final HomeScreenController homeController;
  final PopularFood popularFood;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor().appMainColor,
      appBar: AppBar(
        backgroundColor: CustomColor().transparentColor,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.arrow_back_ios)),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
        ],
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Image.asset(popularFood.image),
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  CustomTextWidget(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      text: popularFood.foodName),
                  Spacer(),
                  CustomFoodPriceWidget(
                    homeController: homeController,
                    index: index,
                  ),
                  SizedBox(
                    width: 10,
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 18,
                  ),
                  CustomTextWidget(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      text: LocalName.reviwers.tr),
                  SizedBox(
                    width: 5,
                  ),
                  CustomTextWidget(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      text: popularFood.rating.toString()),
                  SizedBox(
                    width: 5,
                  ),
                  CustomTextWidget(
                      fontSize: 14, fontWeight: FontWeight.w400, text: '('),
                  CustomTextWidget(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      text: popularFood.count.toString()),
                  CustomTextWidget(
                      fontSize: 14, fontWeight: FontWeight.w400, text: ')')
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  addRemoveItemWidget(
                    icon: Icons.remove,
                  ),
                  Container(
                    color: CustomColor().whiteColor,
                    child: SizedBox(
                      width: 35,
                      height: 40,
                      child: Center(
                        child: CustomTextWidget(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            text: '2'),
                      ),
                    ),
                  ),
                  addRemoveItemWidget(icon: Icons.add)
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  CustomElevButton(
                      text: LocalName.addToCart.tr,
                      onpressed: () {},
                      textColor: CustomColor().whiteColor,
                      buttonBgColor: CustomColor().buttonColor,
                      buttonRadius: 18,
                      sizedBoxWidth: 0.4,
                      sizedBoxHieght: 0.15),
                  SizedBox(
                    width: 20,
                  ),
                  CustomElevButton(
                      text: LocalName.buyNow.tr,
                      onpressed: () {},
                      textColor: CustomColor().blackColor,
                      buttonBgColor: CustomColor().whiteColor,
                      buttonRadius: 18,
                      sizedBoxWidth: 0.4,
                      sizedBoxHieght: 0.15)
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 220),
                child: CustomTextWidget(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    text: LocalName.ingredients.tr),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 10, top: 10),
                child: CustomTextWidget(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    textAlign: TextAlign.justify,
                    text: 'Lorem ipsum dolor sit amet,'
                        ' consectetur adipiscing elitsed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
              )
            ],
          ),
        ],
      ),
    );
  }
}
