import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pertanian/presentation/dashboard/dashboard_page.dart';
import 'package:pertanian/presentation/home/home_store_controller.dart';
import 'package:pertanian/presentation/laporan/laporan_page.dart';
import 'package:pertanian/presentation/settings/settings_page.dart';
import 'package:pertanian/presentation/verifikasi/verifikasi_page.dart';

import 'widgets/bottom_nav_bar.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  static const routeName = '/home';
  final cHome = Get.put(HomeStoreController());

  void _onItemTapped(int index) {
    cHome.pageController.jumpToPage(index);
    cHome.updateActiveTab(index);
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        bottomNavigationBar: BottomNavBar(
          selectedIndex: cHome.activeTab.value,
          onTap: _onItemTapped,
        ),
        body: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: cHome.pageController,
          children: [
            const DashboardPage(),
            LaporanPage(),
            const VerifikasiPage(),
            const SettingsPage(),
          ],
        ),
      ),
    );
  }
}
