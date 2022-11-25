import 'package:flutter/material.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:pertanian/core/const/strings.dart';

import '../../core/const/constants.dart';

class EditAccountStoreController extends GetxController {
  final nameEditingController = TextEditingController();
  final emailEditingController = TextEditingController();
  final passwordEditingController = TextEditingController();
  final passwordConfirmationEditingController = TextEditingController();

  RxBool hidePassword = true.obs;
  RxString suffixPasswordText = Strings.show.obs;
  updateHidePassword() {
    hidePassword(!hidePassword.value);
    suffixPasswordText(!hidePassword.value ? Strings.hide : Strings.show);
  }

  @override
  void onInit() {
    super.onInit();
    passwordEditingController.text = Constants.placeholderPassword;
    passwordConfirmationEditingController.text = Constants.placeholderPassword;
  }
}
