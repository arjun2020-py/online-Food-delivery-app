import 'package:carousel_slider/carousel_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:online_food_order/%20utils/custom_image.dart';
import 'package:online_food_order/interlization/interlization.dart';
import 'package:online_food_order/screen/main/screen/homeScreen/model/home_model.dart';
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
    Food(LocalName.pizza.tr, CustomImage().pizza),
    Food(LocalName.nodlies.tr, CustomImage().nodiles),
    Food(LocalName.juices.tr, CustomImage().juices),
    Food(LocalName.burger.tr, CustomImage().burger),
    Food(LocalName.baryani.tr, CustomImage().bryani),
  ].obs;

  final RxList<PopularFood> popularFood = [
    PopularFood(LocalName.idiyappamWithCurry.tr, CustomImage().food1,
        LocalName.saravanaBhavan.tr, 80, 4.5, 100),
    PopularFood(LocalName.puttuAndKadalaCurry.tr, CustomImage().food2,
        LocalName.mezbanRestaurant.tr, 70, 4.7, 150),
    PopularFood(LocalName.appamWithIshtu.tr, CustomImage().food3,
        LocalName.villaMaya.tr, 160, 4.3, 900),
    PopularFood(LocalName.dosaGheeRoast.tr, CustomImage().food4,
        LocalName.aditiRestaurant.tr, 110, 4.8, 200),
    PopularFood(LocalName.idliSambar.tr, CustomImage().food5,
        LocalName.gingerHouse.tr, 65, 4.2, 200),
    PopularFood(LocalName.nadanKozhiVaruthathu.tr, CustomImage().food6,
        LocalName.spiceVillage.tr, 775, 4.1, 250)
  ].obs;
  carouselSliderChange(int index) {
    current.value = index;
  }
}
