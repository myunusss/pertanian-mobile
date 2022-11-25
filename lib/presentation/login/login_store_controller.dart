import 'package:flutter/material.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:pertanian/core/const/strings.dart';

import '../../data/local/local_data_source.dart';
import '../../di/injection_container.dart';

class LoginStoreController extends GetxController {
  RxBool rememberMe = false.obs;
  updateRememberMe() {
    rememberMe(!rememberMe.value);
  }

  final emailEditingController = TextEditingController(text: getIt.get<LocalDataSource>().getEmail() ?? '');
  final passwordEditingController = TextEditingController(text: getIt.get<LocalDataSource>().getPassword() ?? '');

  RxBool hidePassword = true.obs;
  RxString suffixPasswordText = Strings.show.obs;
  updateHidePassword() {
    hidePassword(!hidePassword.value);
    suffixPasswordText(!hidePassword.value ? Strings.hide : Strings.show);
  }
}
