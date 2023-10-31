import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_food_order/%20utils/custom_color.dart';

import 'compoents/login_screen.dart';
import 'compoents/sign_up_screen.dart';
import 'login_signup_controller.dart';

class LoginSignupPage extends StatelessWidget {
  @override
  final authController = Get.put(LoginSiginupController());



  @override
  // void dispose() {
  //   _pageController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor().appMainColor,
      body: PageView(
        controller:authController.pageController,
        onPageChanged: (index) {
          authController.onCurrentPageSelect(index);
          
        },
        children: <Widget>[
          LoginScreen(),
          SignUpScreen(),
        ],
      ),
      bottomNavigationBar: Obx(
() =>  BottomNavigationBar(
          currentIndex:authController.currentPage.value,
          onTap: (index) {
           authController.pageController.animateToPage(
              index,
              duration: Duration(milliseconds: 500),
              curve: Curves.ease,
            );
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.login,
                color: CustomColor().buttonColor,
              ),
              label: 'Login',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_add,
                color: CustomColor().buttonColor,
              ),
              label: 'Sign Up',
            ),
          ],
        ),
      ),
    );
  }
}
