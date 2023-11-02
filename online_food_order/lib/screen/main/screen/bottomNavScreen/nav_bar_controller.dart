import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_food_order/screen/main/screen/homeScreen/home_screen.dart';

import '../cartScreen/cart_demo.dart';
import '../favouriteScreen/fav_screen.dart';
import '../profileScreen/profile_screen.dart';

class NavBarController extends GetxController {
  RxInt selectTab = 0.obs;
  RxList<Widget> pages =
      [HomeScreen(), CartScreen(), FavScreen(), ProfileScreen()].obs;

  onChangeTab(int index) {
    selectTab.value = index;
  }
}
