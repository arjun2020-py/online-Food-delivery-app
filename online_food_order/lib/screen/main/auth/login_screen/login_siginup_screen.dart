import 'package:flutter/material.dart';
import 'package:online_food_order/%20utils/custom_color.dart';

import '../../../../ utils/custom_image.dart';
import 'compoents/login_screen.dart';
import 'compoents/sign_up_screen.dart';

class LoginSignupPage extends StatefulWidget {
  @override
  _LoginSignupPageState createState() => _LoginSignupPageState();
}

class _LoginSignupPageState extends State<LoginSignupPage> {
  PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor().appMainColor,
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _currentPage = index;
          });
        },
        children: <Widget>[
         
          LoginScreen(),
          SignUpScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentPage,
        onTap: (index) {
          _pageController.animateToPage(
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
    );
  }
}

class SignupScreen {}
