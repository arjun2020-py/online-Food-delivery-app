import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/state_manager.dart';

class LoginSiginupController extends GetxController {
  final formKey = GlobalKey<FormState>();
  RxInt currentPage = 0.obs;
  PageController pageController = PageController();

  TextEditingController emailController = TextEditingController(),
      phoneController = TextEditingController(),
      passwrodController = TextEditingController();

  clearTextedtingController() {
    emailController.clear();
    passwrodController.clear();
    phoneController.clear();
  }

  pleaseEnterVaildEmail(String value) {
    if (value.isEmpty) {
      return 'plese enter valid email id';
    }
  }

  pleaseEnterVaildPhone(String value) {
    if (value.isEmpty) {
      return 'plese enter valid phone number';
    }
  }

  pleaseEnterVaildPasswrod(String value) {
    if (value.isEmpty) {
      return 'plese enter valid passwrod';
    }
  }

  onCurrentPageSelect(int index) {
    currentPage.value = index;
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}
