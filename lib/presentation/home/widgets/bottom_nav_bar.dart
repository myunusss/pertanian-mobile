import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/const/strings.dart';
import '../../../core/style/color_palettes.dart';
import '../../../core/style/sizes.dart';

class BottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onTap;

  const BottomNavBar({
    Key? key,
    required this.selectedIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,
      selectedLabelStyle: const TextStyle(color: ColorPalettes.primary),
      unselectedFontSize: Sizes.sp12,
      selectedFontSize: Sizes.sp12,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.all(Sizes.width5),
            child: SvgPicture.asset('assets/images/dashboard.svg'),
          ),
          activeIcon: Padding(
            padding: EdgeInsets.all(Sizes.width5),
            child: SvgPicture.asset(
              'assets/images/dashboard.svg',
              color: ColorPalettes.primary,
            ),
          ),
          label: 'Dashboard',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.all(Sizes.width5),
            child: SvgPicture.asset('assets/images/report.svg'),
          ),
          activeIcon: Padding(
            padding: EdgeInsets.all(Sizes.width5),
            child: SvgPicture.asset(
              'assets/images/report.svg',
              color: ColorPalettes.primary,
            ),
          ),
          label: 'Laporan',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.all(Sizes.width5),
            child: SvgPicture.asset('assets/images/verifikasi.svg'),
          ),
          activeIcon: Padding(
            padding: EdgeInsets.all(Sizes.width5),
            child: SvgPicture.asset(
              'assets/images/verifikasi.svg',
              color: ColorPalettes.primary,
            ),
          ),
          label: 'Verifikasi',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.all(Sizes.width5),
            child: SvgPicture.asset('assets/images/setting.svg'),
          ),
          activeIcon: Padding(
            padding: EdgeInsets.all(Sizes.width5),
            child: SvgPicture.asset(
              'assets/images/setting.svg',
              color: ColorPalettes.primary,
            ),
          ),
          label: 'Pengaturan',
        ),
      ],
      currentIndex: selectedIndex,
      selectedItemColor: ColorPalettes.primary,
      onTap: onTap,
    );
  }
}
