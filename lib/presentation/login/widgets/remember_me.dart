import 'package:flutter/material.dart';
import 'package:pertanian/core/const/strings.dart';
import 'package:pertanian/core/style/color_palettes.dart';
import 'package:pertanian/core/style/sizes.dart';

class RememberMe extends StatelessWidget {
  final bool isChecked;
  final Function(bool) onChange;

  const RememberMe({
    Key? key,
    required this.isChecked,
    required this.onChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: Sizes.width16),
      child: InkWell(
        onTap: () => onChange(!isChecked),
        child: Row(
          children: [
            isChecked
                ? const Icon(
                    Icons.check_box,
                    color: ColorPalettes.primary,
                  )
                : const Icon(
                    Icons.check_box_outline_blank,
                  ),
            SizedBox(width: Sizes.width4),
            Text(
              Strings.remember,
              style: TextStyle(
                color: ColorPalettes.grey75,
                fontWeight: FontWeight.w400,
                fontSize: Sizes.sp14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
