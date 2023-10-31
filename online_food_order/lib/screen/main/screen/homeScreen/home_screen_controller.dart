import 'package:carousel_slider/carousel_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:online_food_order/%20utils/custom_image.dart';

class HomeScreenController extends GetxController {
  RxInt current = 0.obs;
  CarouselController buttonCarouselController = CarouselController();
  final RxList<String> imageList = [
    //  CustomImage().offer1,
    //CustomImage().offer2,
   // CustomImage().offer3,
    CustomImage().offer4,
    CustomImage().offer5,
    CustomImage().offer6,
    CustomImage().offer7
  ].obs;
  carouselSliderChange(int index) {
    current.value = index;
  }
}
