import 'package:flutter/material.dart';

import '../../../../../ utils/custom_image.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            CustomImage().appIconImage,
            width: MediaQuery.sizeOf(context).width * 0.7,
          ),
          Text('Sign Up Form'),
          // Your sign-up form fields and logic can be added here
        ],
      ),
    );
  }
}
