import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pertanian/core/style/color_palettes.dart';
import 'package:pertanian/core/style/sizes.dart';

class MenuItemSettings extends StatelessWidget {
  final String title;
  final Widget? customIcon;
  final String? asset;
  final Function() onPress;

  const MenuItemSettings({
    Key? key,
    this.customIcon,
    this.asset,
    required this.onPress,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: Sizes.width26, vertical: Sizes.height17),
        child: Row(
          children: [
            customIcon ??
                SvgPicture.asset(
                  asset ?? 'assets/images/edit.svg',
                  color: ColorPalettes.primary,
                  width: Sizes.width24,
                  fit: BoxFit.fill,
                ),
            SizedBox(width: Sizes.width13),
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                  color: ColorPalettes.blackText,
                  fontWeight: FontWeight.w500,
                  fontSize: Sizes.sp18,
                ),
              ),
            ),
            Icon(
              Icons.arrow_forward_ios_rounded,
              size: Sizes.width18,
              color: ColorPalettes.blackText,
            ),
          ],
        ),
      ),
    );
  }
}
