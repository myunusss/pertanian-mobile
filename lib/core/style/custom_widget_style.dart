import 'package:flutter/material.dart';
import 'package:pertanian/core/style/sizes.dart';

import 'color_palettes.dart';

class CustomWidgetStyle {
  CustomWidgetStyle._();

  static InputDecoration formInputDecoration = InputDecoration(
    filled: true,
    isDense: true,
    fillColor: ColorPalettes.greyBackground,
    counter: const SizedBox.shrink(),
    contentPadding: EdgeInsets.symmetric(
      horizontal: Sizes.height14,
      vertical: Sizes.height12,
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(Sizes.width4),
    ),
    focusedBorder: const OutlineInputBorder(
      borderSide: BorderSide(
        color: ColorPalettes.primary,
        width: 1,
      ),
    ),
    enabledBorder: const OutlineInputBorder(
      borderSide: BorderSide(
        color: ColorPalettes.greyForm2,
        width: 1,
      ),
    ),
  );

  static InputDecoration formInputDecorationBorder = InputDecoration(
    filled: true,
    // isDense: true,
    fillColor: Colors.white,
    counter: const SizedBox.shrink(),
    contentPadding: EdgeInsets.symmetric(
      horizontal: Sizes.height14,
      vertical: Sizes.height12,
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(Sizes.width8),
      borderSide: const BorderSide(
        color: ColorPalettes.greyFormBorder,
        width: 0.5,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(Sizes.width8),
      borderSide: const BorderSide(
        color: ColorPalettes.primary,
        width: 0.5,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(Sizes.width8),
      borderSide: const BorderSide(
        color: ColorPalettes.greyFormBorder,
        width: 0.5,
      ),
    ),
    hintStyle: TextStyle(
      color: ColorPalettes.darkText,
      fontSize: Sizes.sp16,
      fontWeight: FontWeight.w400,
    ),
  );
}
