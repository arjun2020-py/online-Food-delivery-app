import 'package:flutter/material.dart';

class customImageWidget extends StatelessWidget {
  const customImageWidget({
    
    super.key,
    required this.customImage,
    required this.width
  });
 final String customImage;
 final double width;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
     customImage,
      width:width ,
    );
  }
}
