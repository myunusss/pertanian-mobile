import 'package:flutter/material.dart';
import 'package:pertanian/core/style/color_palettes.dart';
import 'package:pertanian/core/style/sizes.dart';

import 'button_login.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: Sizes.width24,
        vertical: Sizes.width20,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/splash.png',
            width: Sizes.width40,
            height: Sizes.width78,
            fit: BoxFit.cover,
          ),
          SizedBox(width: Sizes.width20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: Sizes.height8),
                Text(
                  'Dinas Ketahanan Pangan Perikanan Tanaman Pangan dan Holtikultura',
                  style: TextStyle(
                    color: ColorPalettes.blackText,
                    fontWeight: FontWeight.w700,
                    fontSize: Sizes.sp14,
                  ),
                ),
                Text(
                  'Kabupaten Tabalong',
                  style: TextStyle(
                    color: ColorPalettes.darkText,
                    fontWeight: FontWeight.w700,
                    fontSize: Sizes.sp14,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: Sizes.width12),
          const ButtonLogin()
        ],
      ),
    );
  }
}
