import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart' as dio;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:online_food_order/api_utils/url_utils.dart';

import '../../../../interlization/interlization.dart';
import 'services/api_requst_login_model/api_requst_login_model.dart';
import 'services/api_response_login_model/api_response_login_model.dart';

class LoginScreenRepo {
  var _dio = dio.Dio();
  LoginScreenRepo() {
    _dio = dio.Dio(dio.BaseOptions(baseUrl: UrlUtils().loginApi));
  }
  Future<Either<String, ApiResponseLoginModel>> loginApi(
      {required String userName, required String password}) async {
    log('------------------r1');
    try {
      if (!kIsWeb) {
        final bool isInternetConnectionChecker =
            await InternetConnectionChecker().hasConnection;

        if (!isInternetConnectionChecker) {
          return Left(LocalName.internetConnectionChecker.tr);
        }
      }
      log('------------------r2');

      final apiRequst =
          ApiRequstLoginModel.login(username: userName, password: password);

      final response = await _dio.post(UrlUtils().loginApi,
          data: apiRequst,
          options: dio.Options(
            contentType: 'application/json',
          ));
      log('------------------------------r0');
      final ApiResponseLoginModel loginApi =
          ApiResponseLoginModel.fromJson(response.data);
      log('------------------r3');

      return Right(loginApi);
    } catch (e) {
      var expection = SnackBar(content: Text('invaild Crediational'));
      return Left(expection.toString());
    }
  }
}
