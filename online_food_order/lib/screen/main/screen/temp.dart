import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselSliderWithAutoPlay extends StatefulWidget {
  @override
  _CarouselSliderWithAutoPlayState createState() =>
      _CarouselSliderWithAutoPlayState();
}

class _CarouselSliderWithAutoPlayState
    extends State<CarouselSliderWithAutoPlay> {
  int _current = 0;
  CarouselController buttonCarouselController = CarouselController();
  final List<String> imageList = [
    'https://via.placeholder.com/350x150',
    'https://via.placeholder.com/350x150',
    'https://via.placeholder.com/350x150',
    'https://via.placeholder.com/350x150',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CarouselSlider(
            items: imageList.map((item) {
              return Container(
                margin: EdgeInsets.all(5.0),
                child: Image.network(
                  item,
                  fit: BoxFit.cover,
                ),
              );
            }).toList(),
            options:
             CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: true,
              aspectRatio: 2.0,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              },
            ),
            carouselController: buttonCarouselController,
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: imageList.map((url) {
          //     int index = imageList.indexOf(url);
          //     return Container(
          //       width: 8.0,
          //       height: 8.0,
          //       margin: EdgeInsets.symmetric(horizontal: 2.0),
          //       decoration: BoxDecoration(
          //         shape: BoxShape.circle,
          //         color: _current == index ? Colors.blueAccent : Colors.grey,
          //       ),
          //     );
          //   }).toList(),
          // ),
        ],
      ),
    );
  }
}
