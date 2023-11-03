import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_food_order/%20utils/custom_color.dart';
import 'package:online_food_order/%20utils/custom_image.dart';
import 'package:online_food_order/customWidget/custom_elev_butt_widget.dart';
import 'package:online_food_order/customWidget/custom_text_widget.dart';
import 'package:online_food_order/customWidget/cutom_image_widget.dart';
import 'package:online_food_order/screen/main/screen/homeScreen/compoents/custom_price_widget.dart';

import '../../../../interlization/interlization.dart';
import '../detailedFoodScreen/compoents/custom_add_remove_widget.dart';
import 'compoents/clalaulate_price.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor().appMainColor,
      appBar: AppBar(
        backgroundColor: CustomColor().transparentColor,
        centerTitle: true,
        leading:
            IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios_new)),
        title: CustomTextWidget(
            fontSize: 20, fontWeight: FontWeight.w500, text: LocalName.cart.tr),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: CustomTextWidget(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                text: LocalName.selectedItems.tr),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Card(
                    color: CustomColor().cutomCardColor,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: customImageWidget(
                              customImage: CustomImage().food1, width: 150),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: CustomTextWidget(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  text: LocalName.appamWithIshtu.tr),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 70),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.currency_rupee_outlined,
                                    size: 15,
                                    color: CustomColor().blackColor,
                                  ),
                                  CustomTextWidget(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w300,
                                      text: '20'),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
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
                              height: 10,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Card(
            color: CustomColor().cutomCardColor,
            child: Column(
              children: [
                CalualatePriceWidget(
                  price: '280',
                  text: LocalName.subTotal.tr,
                ),
                Divider(
                  color: CustomColor().blackColor,
                  thickness: 0.5,
                ),
                CalualatePriceWidget(
                    text: LocalName.deliveryCharge.tr, price: '20'),
                Divider(
                  color: CustomColor().blackColor,
                  thickness: 0.5,
                ),
                CalualatePriceWidget(
                  text: LocalName.total.tr,
                  price: '300',
                  color: CustomColor().buttonColor,
                  priceColor: CustomColor().buttonColor,
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: CustomElevButton(
                text: LocalName.placeOrder.tr,
                onpressed: () {},
                textColor: CustomColor().whiteColor,
                buttonBgColor: CustomColor().buttonColor,
                buttonRadius: 20,
                sizedBoxWidth: 0.9,
                sizedBoxHieght: 0.15),
          ),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
