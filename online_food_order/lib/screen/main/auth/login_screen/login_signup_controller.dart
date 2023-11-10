import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/state_manager.dart';

import '../../../../api_utils/custom_tost_widget.dart';
import '../../../../interlization/interlization.dart';
import '../otp/otp_screen.dart';
import 'login_sigin_repo.dart';
import 'services/api_response_login_model/api_response_login_model.dart';

class LoginSiginupController extends GetxController {
  final LoginScreenRepo _loginScreenRepo = LoginScreenRepo();
  final formKey = GlobalKey<FormState>();
  RxInt currentPage = 0.obs;
  PageController pageController = PageController();
  RxBool isLoginLodaing = false.obs;
  RxBool isLogingError = false.obs;
  RxString loginToken = ''.obs;

  TextEditingController userController = TextEditingController(),
      phoneController = TextEditingController(),
      passwrodController = TextEditingController();

  clearTextedtingController() {
    userController.clear();
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
//login controller

  Future<void> onScreenLogin(String userName, String passwrod) async {
    log('---------------------------c1');
    isLoginLodaing(true);
    Either<String, ApiResponseLoginModel> resultOrExpection =
        await _loginScreenRepo.loginApi(userName: userName, password: passwrod);
    log('---------------------------c2');

    resultOrExpection.fold((left) {
      log('---------------------------c3');

      isLogingError(true);
      commonOkToast('inavild values');
    }, (right) {
      log('---------------------------c4');

      commonOkToast(LocalName.sucess.tr);
      loginToken.value = right.token!;
    });
    isLoginLodaing(false);
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}
