import 'package:flutter/material.dart';
import 'package:pertanian/core/style/sizes.dart';

import 'color_palettes.dart';

class CustomTextStyle {
  CustomTextStyle._();

  static TextStyle textFormStyle = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: Sizes.sp14,
    color: ColorPalettes.textNeutral,
  );

  static TextStyle hintFormStyle = TextStyle(
    color: ColorPalettes.greyText,
    fontSize: Sizes.sp16,
  );
}
