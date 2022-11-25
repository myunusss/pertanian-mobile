import 'package:flutter/material.dart';
import 'package:pertanian/core/style/color_palettes.dart';
import 'package:pertanian/core/style/sizes.dart';

class DetailsSection extends StatelessWidget {
  final String title;
  final Widget? headerChild;
  final List<Widget> children;
  final Function(bool) onExpansionChanged;

  const DetailsSection({
    Key? key,
    this.headerChild,
    required this.title,
    required this.children,
    required this.onExpansionChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        dividerColor: ColorPalettes.bgGrey,
      ),
      child: Container(
        margin: const EdgeInsets.only(left: 20, right: 20, top: 4, bottom: 12),
        decoration: const BoxDecoration(
          color: ColorPalettes.bgGrey,
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        child: ExpansionTile(
          title: Row(
            children: [
              Text(
                title,
                style: TextStyle(
                  color: ColorPalettes.darkText2,
                  fontSize: Sizes.sp18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          tilePadding: const EdgeInsets.symmetric(horizontal: 20),
          collapsedIconColor: ColorPalettes.blackText,
          iconColor: ColorPalettes.blackText,
          initiallyExpanded: false,
          onExpansionChanged: onExpansionChanged,
          children: children,
        ),
      ),
    );
  }
}
