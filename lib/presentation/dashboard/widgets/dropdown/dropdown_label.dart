import 'package:flutter/material.dart';
import 'package:pertanian/core/style/color_palettes.dart';
import 'package:pertanian/core/style/sizes.dart';

import 'custom_dropdown.dart';

class DropdownLabel extends StatelessWidget {
  final String label;
  final String selected;
  final List<dynamic> listValue;
  final Function(String) onSelect;

  const DropdownLabel({
    Key? key,
    required this.label,
    required this.selected,
    required this.listValue,
    required this.onSelect,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            margin: EdgeInsets.only(right: Sizes.width18),
            child: Text(
              label,
              style: TextStyle(
                color: ColorPalettes.blackText,
                fontSize: Sizes.sp14,
              ),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: CustomDropdown(
            value: selected,
            listValue: listValue,
            updateValue: onSelect,
          ),
        ),
      ],
    );
  }
}
