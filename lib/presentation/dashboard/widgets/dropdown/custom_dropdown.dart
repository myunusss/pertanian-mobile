import 'package:flutter/material.dart';

import '../../../../../../core/style/color_palettes.dart';
import '../../../../../../core/style/sizes.dart';
import '../../../../../../core/extensions/ext.dart';

class CustomDropdown extends StatelessWidget {
  final String? value;
  final double? height;
  final String? hintText;
  final List<dynamic> listValue;
  final Function(String) updateValue;

  const CustomDropdown({
    Key? key,
    this.height,
    this.hintText,
    required this.value,
    required this.listValue,
    required this.updateValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? Sizes.height36,
      padding: EdgeInsets.symmetric(horizontal: Sizes.width12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(Sizes.height8)),
        color: ColorPalettes.bgGrey,
      ),
      child: DropdownButton(
        isExpanded: true,
        hint: Text(
          hintText ?? '',
          style: TextStyle(
            color: ColorPalettes.darkText,
            fontSize: Sizes.sp16,
            fontWeight: FontWeight.w400,
          ),
        ),
        value: value != null ? listValue.firstWhere((element) => element == value) : null,
        icon: Icon(Icons.keyboard_arrow_down_rounded, size: Sizes.height24),
        elevation: 1,
        underline: const SizedBox(),
        onChanged: (value) {
          updateValue(value as String);
        },
        items: listValue
            .map(
              (e) => DropdownMenuItem(
                value: e,
                child: Text(
                  e.toString().capitalize(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: Sizes.sp14,
                    color: ColorPalettes.blackText,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
