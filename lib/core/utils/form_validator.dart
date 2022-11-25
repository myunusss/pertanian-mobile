import 'package:flutter/material.dart';

class FormValidator {
  FormValidator._();

  static String? validateEmail(BuildContext context, String value) {
    String pattern = r"(^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$)";
    RegExp regExp = RegExp(pattern);
    if (value.isEmpty) {
      return "Email tidak boleh kosong";
    } else if (!regExp.hasMatch(value)) {
      return "Email tidak valid";
    } else if (value.length > 100) {
      return "Email terlalu panjang";
    } else {
      return null;
    }
  }

  static String? validatePassword(BuildContext context, String value, {String? textError}) {
    if (value.isEmpty) {
      return textError ?? "Password tidak boleh kosong";
    } else {
      return null;
    }
  }
}
