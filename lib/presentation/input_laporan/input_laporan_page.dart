import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:pertanian/core/extensions/snackbar_ext.dart';
import 'package:pertanian/core/style/sizes.dart';
import 'package:pertanian/presentation/input_laporan/cubit/detail_laporan_cubit.dart';
import 'package:pertanian/presentation/input_laporan/input_laporan_store_controller.dart';

import '../../core/const/strings.dart';
import '../../core/style/color_palettes.dart';
import '../../core/style/custom_widget_style.dart';
import '../../core/unions/failure.dart';
import '../../core/unions/result_state.dart';
import '../../core/utils/get_util.dart';
import '../../core/widgets/label_form.dart';
import '../../core/widgets/loading_dialog.dart';
import '../dashboard/widgets/dropdown/custom_dropdown.dart';

final laporanFormKey = GlobalKey<FormState>();

class InputLaporanPage extends StatefulWidget {
  const InputLaporanPage({Key? key}) : super(key: key);

  static const routeName = '/input-laporan';

  @override
  State<InputLaporanPage> createState() => _InputLaporanPageState();
}

class _InputLaporanPageState extends State<InputLaporanPage> {
  final cLaporan = Get.put(InputLaporanStoreController(
    Get.arguments,
    Get.arguments != null ? true : false,
  ));

  @override
  void initState() {
    super.initState();
    final argument = Get.arguments;

    context.read<DetailLaporanCubit>().getListKecamatan();
    context.read<DetailLaporanCubit>().getVillages();
    context.read<DetailLaporanCubit>().getComodities('buah');

    SchedulerBinding.instance.addPostFrameCallback((_) {
      if (argument != null) {
        GetUtil.showDialog(
          const LoadingDialog(),
          barrierDismissible: false,
        );
        context.read<DetailLaporanCubit>().getDetailLaporan(argument).then((value) {
          cLaporan.updateData(value);
          GetUtil.dismissDialog();
        });
      }
    });
  }

  _postLaporan(BuildContext context) {
    final state = context.read<DetailLaporanCubit>().state;
    FocusManager.instance.primaryFocus?.unfocus();
    if (laporanFormKey.currentState!.validate() && state.comodityId != null && state.villageId != null) {
      context.read<DetailLaporanCubit>().postDataLaporan(cLaporan);
    } else {
      GetUtil.context.showErrorSnackbar('Mohon periksa kembali data yang dimasukkan!');
    }
  }

  _handlePostLaporan(ResultState postResult, BuildContext context) {
    postResult.maybeWhen(
      loading: () async => await GetUtil.showDialog(
        const LoadingDialog(),
        barrierDismissible: false,
      ),
      success: (data) async {
        GetUtil.dismissDialog();
        GetUtil.context.showSuccessSnackbar(Strings.successPostLaporan);
        Navigator.pop(context, true);
      },
      error: (failure) {
        GetUtil.dismissDialog();
        GetUtil.context.showErrorSnackbar(Failure.getErrorMessage(failure));
      },
      orElse: () => null,
    );
  }

  @override
  Widget build(BuildContext context) {
    // final dashboardState = context.read<DashboardCubit>().state;

    return Scaffold(
      appBar: AppBar(
        title: Obx(() => Text(cLaporan.title.value)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(Sizes.height30),
          child: Form(
            key: laporanFormKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: Sizes.height14),
                const LabelForm(text: 'Kecamatan'),
                SizedBox(height: Sizes.height14),
                BlocBuilder<DetailLaporanCubit, DetailLaporanState>(
                  builder: (context, state) {
                    if (state.listKecamatan != null) {
                      final selected = state.kecamatanId != null
                          ? state.listKecamatan!.firstWhere((element) => element.id == state.kecamatanId).name
                          : null;
                      return CustomDropdown(
                        value: selected,
                        hintText: 'Pilih kecamatan',
                        height: Sizes.height52,
                        listValue: state.listKecamatan!.map((e) => e.name).toList(),
                        updateValue: (value) {
                          context.read<DetailLaporanCubit>().updateKecamatanId(value);
                        },
                      );
                    } else {
                      return const SizedBox.shrink();
                    }
                  },
                ),
                SizedBox(height: Sizes.height15),
                const LabelForm(text: 'Wilayah'),
                SizedBox(height: Sizes.height14),
                BlocBuilder<DetailLaporanCubit, DetailLaporanState>(
                  builder: (context, state) {
                    if (state.filteredVillages.isNotEmpty) {
                      final selected = state.villageId != null
                          ? state.villages.firstWhere((element) => element.id == state.villageId).name
                          : null;
                      return CustomDropdown(
                        value: selected,
                        hintText: 'Pilih desa',
                        height: Sizes.height52,
                        listValue: state.filteredVillages.map((e) => e.name).toList(),
                        updateValue: (value) {
                          context.read<DetailLaporanCubit>().updateVillageId(value);
                        },
                      );
                    } else {
                      return const SizedBox.shrink();
                    }
                  },
                ),
                SizedBox(height: Sizes.height15),
                const LabelForm(text: 'Jenis Komoditas'),
                SizedBox(height: Sizes.height14),
                Obx(
                  () => CustomDropdown(
                    value: cLaporan.selectedTypeComodity.value != ''
                        ? cLaporan.listType.firstWhere((element) => element == cLaporan.selectedTypeComodity.value)
                        : null,
                    hintText: 'Pilih jenis komoditas',
                    height: Sizes.height52,
                    listValue: cLaporan.listType.map((e) => e).toList(),
                    updateValue: (value) {
                      cLaporan.updateSelectedTypeComodity(value);
                      context.read<DetailLaporanCubit>().getComodities(value);
                    },
                  ),
                ),
                SizedBox(height: Sizes.height15),
                const LabelForm(text: 'Nama Komoditas'),
                SizedBox(height: Sizes.height14),
                // Obx(
                //   () => CustomDropdown(
                //     value: cLaporan.selectedComodity.value != 0
                //         ? dashboardState.comodities
                //             .firstWhere((element) => element.id == cLaporan.selectedComodity.value)
                //             .name
                //         : null,
                //     hintText: 'Pilih komoditas',
                //     height: Sizes.height52,
                //     listValue: dashboardState.comodities.map((e) => e.name).toList(),
                //     updateValue: (value) {
                //       final comodity = dashboardState.comodities.firstWhere((element) => element.name == value);
                //       if (comodity.id != null) {
                //         cLaporan.updateSelectedComodity(comodity.id!);
                //       }
                //     },
                //   ),
                // ),
                BlocBuilder<DetailLaporanCubit, DetailLaporanState>(
                  builder: (context, state) {
                    if (state.comodities.isNotEmpty) {
                      final selected = state.comodityId != null
                          ? state.comodities.firstWhere((element) => element.id == state.comodityId).name
                          : null;
                      return CustomDropdown(
                        value: selected,
                        hintText: 'Pilih komoditas',
                        height: Sizes.height52,
                        listValue: state.comodities.map((e) => e.name).toList(),
                        updateValue: (value) {
                          context.read<DetailLaporanCubit>().updateComodityId(value);
                        },
                      );
                    } else {
                      return const SizedBox.shrink();
                    }
                  },
                ),
                SizedBox(height: Sizes.height15),
                const LabelForm(text: 'Luas Tanam'),
                SizedBox(height: Sizes.height14),
                TextFormField(
                  controller: cLaporan.luasTanamEditingController,
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.done,
                  decoration: CustomWidgetStyle.formInputDecorationBorder.copyWith(
                    hintText: 'Masukkan luas tanam',
                    suffix: const Text('(pohon)'),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Luas tanam tidak boleh kosong!';
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(height: Sizes.height15),
                const LabelForm(text: 'Tan. Hasil'),
                SizedBox(height: Sizes.height14),
                TextFormField(
                  controller: cLaporan.tanHasilEditingController,
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.done,
                  decoration: CustomWidgetStyle.formInputDecorationBorder.copyWith(
                    hintText: 'Masukkan tan. hasil',
                    suffix: const Text('(pohon)'),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Tan. hasil tidak boleh kosong!';
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(height: Sizes.height15),
                const LabelForm(text: 'Produksi'),
                SizedBox(height: Sizes.height14),
                TextFormField(
                  controller: cLaporan.produksiEditingController,
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.done,
                  decoration: CustomWidgetStyle.formInputDecorationBorder.copyWith(
                    hintText: 'Masukkan jumlah produksi',
                    suffix: const Text('(kwintal)'),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Jumlah produksi tidak boleh kosong!';
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(height: Sizes.height15),
                const LabelForm(text: 'Provitas'),
                SizedBox(height: Sizes.height14),
                TextFormField(
                  controller: cLaporan.provitasEditingController,
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.done,
                  decoration: CustomWidgetStyle.formInputDecorationBorder.copyWith(
                    hintText: 'Masukkan Provitas',
                    suffix: const Text('(pohon/kwintal)'),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Provitas tidak boleh kosong!';
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(height: Sizes.height15),
                const LabelForm(text: 'Harga Produsen'),
                SizedBox(height: Sizes.height14),
                TextFormField(
                  controller: cLaporan.hargaProdusenEditingController,
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.done,
                  decoration: CustomWidgetStyle.formInputDecorationBorder.copyWith(
                    hintText: 'Masukkan Harga Produsen',
                    // suffix: const Text('(pohon/kwintal)'),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Harga Produsen tidak boleh kosong!';
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(height: Sizes.height15),
                const LabelForm(text: 'Harga Grosir'),
                SizedBox(height: Sizes.height14),
                TextFormField(
                  controller: cLaporan.hargaGrosirEditingController,
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.done,
                  decoration: CustomWidgetStyle.formInputDecorationBorder.copyWith(
                    hintText: 'Masukkan Harga Grosir',
                    // suffix: const Text('(pohon/kwintal)'),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Harga Grosir tidak boleh kosong!';
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(height: Sizes.height15),
                const LabelForm(text: 'Harga Eceran'),
                SizedBox(height: Sizes.height14),
                TextFormField(
                  controller: cLaporan.hargeEceranEditingController,
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.done,
                  decoration: CustomWidgetStyle.formInputDecorationBorder.copyWith(
                    hintText: 'Masukkan Harga Eceran',
                    // suffix: const Text('(pohon/kwintal)'),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Harga Eceran tidak boleh kosong!';
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(height: Sizes.height25),
                BlocListener<DetailLaporanCubit, DetailLaporanState>(
                  listenWhen: (previous, current) =>
                      previous.postDataLaporanResultState != current.postDataLaporanResultState,
                  listener: (context, state) => _handlePostLaporan(state.postDataLaporanResultState, context),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: SizedBox(
                      width: Sizes.height100,
                      height: Sizes.height40,
                      child: ElevatedButton(
                        onPressed: () => _postLaporan(context),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: ColorPalettes.primary,
                          minimumSize: Size(double.infinity, Sizes.height46),
                          elevation: 0,
                        ),
                        child: Text(
                          'Submit',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: Sizes.sp14,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
