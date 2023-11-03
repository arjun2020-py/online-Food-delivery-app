import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_food_order/%20utils/custom_color.dart';
import 'package:online_food_order/customWidget/custom_elev_butt_widget.dart';
import 'package:online_food_order/interlization/interlization.dart';

import '../../../../../customWidget/custom_text_widget.dart';
import '../../detailedFoodScreen/detailed_food_screen.dart';
import '../home_screen_controller.dart';
import 'custom_price_widget.dart';
import 'custom_rating_widget.dart';

class popularFoodWidget extends StatelessWidget {
  const popularFoodWidget({
    super.key,
    required this.homeController,
  });

  final HomeScreenController homeController;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height *
          0.4, // Set a fixed height here as an example
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: homeController.popularFood.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              Get.to(DetailedFoodScreen(
                homeController: homeController,
                index: index,
                popularFood: homeController.popularFood[index],
              ));
            },
            child: Container(
              margin: EdgeInsets.all(10),
              width: MediaQuery.sizeOf(context).width * 0.75,
              child: Card(
                child: Column(
                  children: [
                    Image.asset(homeController.popularFood[index].image),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 45),
                          child: CustomTextWidget(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            text: homeController.popularFood[index].foodName,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: CustomColor().buttonColor,
                        ),
                        CustomTextWidget(
                            fontSize: 12,
                            fontWeight: FontWeight.w200,
                            text: homeController.popularFood[index].hotelName),
                        Spacer(),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.favorite,
                              color: CustomColor().buttonColor,
                            )),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        CustomElevButton(
                          text: LocalName.addToCart.tr,
                          onpressed: () {},
                          textColor: CustomColor().buttonColor,
                          buttonBgColor: CustomColor().whiteColor,
                          buttonRadius: 20,
                          sizedBoxWidth: 0.35,
                          sizedBoxHieght: 0.10,
                          borderColor: CustomColor().blackColor,
                        ),
                        Spacer(),
                        CustomPriceWidget(
                          homeController: homeController,
                          index: index,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
