import 'package:flutter/material.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class HomeStoreController extends GetxController {
  RxInt activeTab = 0.obs;
  updateActiveTab(int tab) {
    activeTab(tab);
  }

  final PageController pageController = PageController(initialPage: 0);
}
