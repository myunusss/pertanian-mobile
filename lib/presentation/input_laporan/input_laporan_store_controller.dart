import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../domain/entities/laporan/fruit.dart';

class InputLaporanStoreController extends GetxController {
  final Fruit? data;
  final bool? isEdit;

  InputLaporanStoreController(
    this.data,
    this.isEdit,
  );

  final luasTanamEditingController = TextEditingController();
  final tanHasilEditingController = TextEditingController();
  final produksiEditingController = TextEditingController();
  final provitasEditingController = TextEditingController();
  final hargaProdusenEditingController = TextEditingController();
  final hargaGrosirEditingController = TextEditingController();
  final hargeEceranEditingController = TextEditingController();

  RxString selectedTypeComodity = ''.obs;
  updateSelectedTypeComodity(String value) {
    selectedTypeComodity.value = value;
  }

  RxInt selectedComodity = 0.obs;
  updateSelectedComodity(int value) {
    selectedComodity.value = value;
  }

  RxInt selectedVillage = 0.obs;
  updateSelectedVillage(int value) {
    selectedVillage.value = value;
  }

  RxString title = ''.obs;

  updateData(Fruit? data) {
    luasTanamEditingController.text = data?.luasTanam ?? '';
    tanHasilEditingController.text = data?.tanamHasil ?? '';
    produksiEditingController.text = data?.jumlahProduksi ?? '';
    provitasEditingController.text = data?.provitas ?? '';
    hargaProdusenEditingController.text = data?.hargaProdusen ?? '';
    hargaGrosirEditingController.text = data?.hargaGrosir ?? '';
    hargeEceranEditingController.text = data?.hargaEceran ?? '';

    if (data != null) {
      selectedComodity.value = data.comodityId ?? 0;
      selectedVillage.value = data.desaId ?? 0;
      selectedTypeComodity.value = 'buah';
    }
  }

  RxList<String> listType = [
    'buah',
    'sayur',
    'biofarmaka',
  ].obs;

  @override
  void onInit() {
    title.value = isEdit == true ? 'Edit Data' : 'Input Data Baru';
    super.onInit();
  }
}
