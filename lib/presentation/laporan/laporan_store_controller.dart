import 'package:flutter/material.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class LaporanStoreController extends GetxController {
  RxList<String> listType = [
    'buah',
    'sayur',
    'biofarmaka',
  ].obs;

  RxList listTahun = [
    '2019',
    '2020',
    '2021',
    '2022',
    '2023',
    '2024',
  ].obs;

  RxString selectedType = ''.obs;
  updateSelectedType(int index) {
    selectedType(listType[index]);
  }

  RxString selectedYear = ''.obs;
  updateSelectedYear(String year) {
    selectedYear(year);
  }

  final queryEditingController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
    queryEditingController.text = '';
    selectedType(listType[0]);
    selectedYear(listTahun[0]);
  }
}
