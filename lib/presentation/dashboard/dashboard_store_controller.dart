import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class DashboardStoreController extends GetxController {
  RxList<String> listType = [
    'buah',
    'sayur',
    'biofarmaka',
  ].obs;

  RxList listDaerah = [
    'semua',
    'kecamatan',
    'desa',
  ].obs;

  RxList listTahun = [
    '2019',
    '2020',
    '2021',
    '2022',
    '2023',
    '2024',
  ].obs;

  RxList listCategory = [
    'luas tanam',
    'provitas',
    'tanam hasil',
  ].obs;

  RxString selectedType = ''.obs;
  updateSelectedType(int index) {
    selectedType(listType[index]);
  }

  RxString selectedDaerah = ''.obs;
  updateSelectedDaerah(String daerah) {
    selectedDaerah(daerah);
  }

  RxString selectedYear = ''.obs;
  updateSelectedYear(String year) {
    selectedYear(year);
  }

  RxString selectedCategory = ''.obs;
  updateSelectedCategory(String category) {
    selectedCategory(category);
  }

  @override
  void onInit() {
    super.onInit();
    selectedType(listType[0]);
    selectedDaerah(listDaerah[0]);
    selectedYear(listTahun[0]);
    selectedCategory(listCategory[0]);
  }
}
