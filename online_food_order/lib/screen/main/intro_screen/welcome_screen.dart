import 'package:flutter/material.dart';
import 'package:online_food_order/%20utils/custom_color.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor().appMainColor,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Image.asset(
              'assets/images/logo_prev_ui.png',
              width: MediaQuery.sizeOf(context).width * 1,
            )
          ],
        ),
      ),
    );
  }
}
