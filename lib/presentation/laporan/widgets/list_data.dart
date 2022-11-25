import 'package:flutter/material.dart';
import 'package:pertanian/core/style/color_palettes.dart';
import 'package:pertanian/presentation/verifikasi/widget/status_and_actions.dart';

import '../../../core/style/sizes.dart';
import 'details_content.dart';
import 'details_section.dart';

class ListData extends StatelessWidget {
  final List<dynamic> items;
  final bool? isEditable;
  final Function()? refresh;

  const ListData({
    super.key,
    required this.items,
    this.isEditable,
    this.refresh,
  });

  @override
  Widget build(BuildContext context) {
    if (items.isNotEmpty) {
      return RefreshIndicator(
        onRefresh: () async {
          if (refresh != null) {
            refresh!();
          }
        },
        child: ListView.builder(
          itemCount: items.length,
          padding: EdgeInsets.symmetric(vertical: Sizes.height24),
          itemBuilder: (BuildContext context, int index) {
            final item = items[index];
            return DetailsSection(
              title: item.comodity?.name ?? '',
              children: [
                DetailsContent(data: item),
                isEditable == true
                    ? StatusAndActions(
                        data: item,
                        onUpdate: refresh ?? () {},
                      )
                    : const SizedBox.shrink(),
              ],
              onExpansionChanged: (value) {},
            );
          },
        ),
      );
    } else {
      return Container(
        padding: EdgeInsets.all(Sizes.height24),
        alignment: Alignment.center,
        child: Text(
          'Belum ada data',
          style: TextStyle(
            color: ColorPalettes.greyText,
            fontWeight: FontWeight.w400,
            fontSize: Sizes.sp14,
          ),
        ),
      );
    }
  }
}
