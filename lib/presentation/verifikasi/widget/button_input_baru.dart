import 'package:flutter/material.dart';

import '../../../core/style/color_palettes.dart';
import '../../../core/style/sizes.dart';
import '../../../core/utils/navigation_util.dart';
import '../../input_laporan/input_laporan_page.dart';

class ButtonInputBaru extends StatelessWidget {
  final Function() onUpdate;

  const ButtonInputBaru({
    super.key,
    required this.onUpdate,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Sizes.height135,
      height: Sizes.height40,
      child: ElevatedButton(
        onPressed: () async {
          final result = await NavigationUtil.pushNamed(
            InputLaporanPage.routeName,
          );
          if (result == true) {
            onUpdate();
          }
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorPalettes.primary,
          minimumSize: Size(double.infinity, Sizes.height46),
          elevation: 0,
        ),
        child: Row(
          children: [
            Icon(
              Icons.add,
              size: Sizes.height18,
            ),
            Text(
              'Input Baru',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: Sizes.sp12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
