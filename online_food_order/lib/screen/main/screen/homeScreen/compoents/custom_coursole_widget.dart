import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../home_screen_controller.dart';

class customCarouselWidet extends StatelessWidget {
  const customCarouselWidet({
    super.key,
    required this.homeController,
  });

  final HomeScreenController homeController;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: homeController.imageList.map((item) {
        return Container(
          margin: EdgeInsets.all(5.0),
          child: Image.asset(
            item,
            fit: BoxFit.cover,
          ),
        );
      }).toList(),
      options: CarouselOptions(
        autoPlay: true,
        enlargeCenterPage: true,
        aspectRatio: 2.0,
        onPageChanged: (index, reason) {
          homeController.carouselSliderChange(index);
        },
      ),
      carouselController: homeController.buttonCarouselController,
    );
  }
}
