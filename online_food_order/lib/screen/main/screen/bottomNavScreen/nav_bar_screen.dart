import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_food_order/%20utils/custom_color.dart';

import 'nav_bar_controller.dart';

class BottomNavBarScreen extends StatelessWidget {
  BottomNavBarScreen({super.key});
  final navController = Get.put(NavBarController());
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
          body: navController.pages[navController.selectTab.value],
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: navController.selectTab.value,
              onTap: (index) => navController.onChangeTab(index),
              selectedItemColor: CustomColor().buttonColor,
              unselectedItemColor: CustomColor().greyColor,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.add_shopping_cart), label: 'cart'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.favorite), label: 'fav'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person), label: 'profile')
              ])),
    );
  }
}
