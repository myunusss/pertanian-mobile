import 'package:flutter/material.dart';
import 'package:pertanian/core/style/color_palettes.dart';
import 'package:pertanian/core/style/sizes.dart';
import 'package:pertanian/core/extensions/ext.dart';

import 'sliver_app_bar_delegate.dart';

class TabBarMenu extends StatelessWidget {
  final List<String> items;
  final Function(int) onTap;
  final bool pinned;

  const TabBarMenu({
    Key? key,
    required this.items,
    required this.onTap,
    this.pinned = true,
  }) : super(key: key);

  List<Tab> getTabItems() {
    List<Tab> tabs = [];
    for (var element in items) {
      tabs.add(
        Tab(text: element.capitalize()),
      );
    }
    return tabs;
  }

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      delegate: SliverAppBarDelegate(
        TabBar(
          padding: EdgeInsets.symmetric(horizontal: Sizes.height20),
          indicator: const UnderlineTabIndicator(
            borderSide: BorderSide(width: 3, color: ColorPalettes.primary),
            insets: EdgeInsets.symmetric(horizontal: -12.0),
          ),
          indicatorSize: TabBarIndicatorSize.label,
          labelStyle: TextStyle(
            fontSize: Sizes.sp18,
            fontWeight: FontWeight.w500,
          ),
          labelColor: ColorPalettes.primary,
          unselectedLabelColor: ColorPalettes.greyUnselectedTab,
          isScrollable: true,
          tabs: getTabItems(),
          onTap: onTap,
        ),
      ),
      pinned: pinned,
    );
  }
}
