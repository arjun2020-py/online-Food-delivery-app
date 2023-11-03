import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_food_order/%20utils/custom_color.dart';
import 'package:online_food_order/%20utils/custom_image.dart';
import 'package:online_food_order/customWidget/custom_text_widget.dart';
import 'package:online_food_order/interlization/interlization.dart';

import 'compoents/custom_catagery_screen.dart';
import 'compoents/custom_coursole_widget.dart';
import 'compoents/home_serach_widget.dart';
import 'compoents/popular_food_widget.dart';
import 'home_screen_controller.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final homeController = Get.put(HomeScreenController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor().appMainColor,
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage(
                        CustomImage().profileImage,
                      ),
                    ),
                    Spacer(),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.shopping_cart,
                          size: 25,
                        )),
                    SizedBox(
                      width: 10,
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                homeSerchWidget(),
                SizedBox(
                  height: 10,
                ),
                customCarouselWidet(homeController: homeController),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 180),
                  child: CustomTextWidget(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      text: LocalName.categories.tr),
                ),
                SizedBox(
                  height: 10,
                ),
                customCatageryScreen(homeController: homeController),
                Padding(
                  padding: const EdgeInsets.only(right: 150),
                  child: CustomTextWidget(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      text: LocalName.popularFood.tr),
                ),
                popularFoodWidget(homeController: homeController)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
