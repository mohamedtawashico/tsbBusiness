import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tsb/views/auth/widget/content_login.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';

class AuthController extends GetxController {
  bool isLogin = false;

  void runLoader() {
    Timer(Duration(seconds: 3), () {
      print('ffffffffff');
    });
  }

  void changeWidget() {
    isLogin = !isLogin;
    update();
  }
}
