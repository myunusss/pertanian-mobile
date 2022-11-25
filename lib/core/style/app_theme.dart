import 'package:flutter/material.dart';
import 'package:pertanian/core/style/sizes.dart';

import 'color_palettes.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: ColorPalettes.primary,
    dividerColor: ColorPalettes.divider,
    primarySwatch: ColorPalettes.primarySwatch,
    scaffoldBackgroundColor: Colors.white,
    textTheme: Typography.englishLike2018.apply(
      bodyColor: ColorPalettes.blackGrey,
      displayColor: ColorPalettes.blackGrey,
    ),
    appBarTheme: const AppBarTheme().copyWith(
      elevation: 0,
      color: Colors.white,
      iconTheme: const IconThemeData().copyWith(
        color: ColorPalettes.greyIcon,
      ),
      titleTextStyle: TextStyle(
        color: ColorPalettes.blackText,
        fontSize: Sizes.sp20,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}
