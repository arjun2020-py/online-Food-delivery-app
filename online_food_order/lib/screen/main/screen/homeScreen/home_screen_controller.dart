import 'package:carousel_slider/carousel_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:online_food_order/%20utils/custom_image.dart';
import 'package:online_food_order/interlization/interlization.dart';
import 'package:online_food_order/screen/main/screen/temp.dart';

class HomeScreenController extends GetxController {
  RxInt current = 0.obs;
  CarouselController buttonCarouselController = CarouselController();
  final RxList<String> imageList = [
    CustomImage().offer4,
    CustomImage().offer5,
    CustomImage().offer6,
    CustomImage().offer7
  ].obs;

  final RxList<Food> catageryList = [
    Food(LocalName.iceCream.tr, CustomImage().icream),
    Food(LocalName.pizza.tr, CustomImage().icream),
    Food(LocalName.nodlies.tr, CustomImage().icream),
    Food(LocalName.juices.tr, CustomImage().icream),
    Food(LocalName.burger.tr, CustomImage().icream),
    Food(LocalName.baryani.tr, CustomImage().icream),
  ].obs;
  carouselSliderChange(int index) {
    current.value = index;
  }
}
