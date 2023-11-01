import 'package:flutter/material.dart';
import 'package:online_food_order/screen/main/screen/homeScreen/home_screen_controller.dart';

import '../../../../../customWidget/custom_text_widget.dart';

class customCatageryScreen extends StatelessWidget {
  const customCatageryScreen({
    super.key,
    required this.homeController,
  });

  final HomeScreenController homeController;

  @override
  Widget build(BuildContext context) {
    return 
    Container(
      height: 100, // Set a fixed height here as an example
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: homeController.catageryList.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.all(10),
            width: 100,
            child: Column(
              children: [
                CircleAvatar(
                  backgroundImage:
                      AssetImage(homeController.catageryList[index].image),
                ),
                CustomTextWidget(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  text: homeController.catageryList[index].name,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
