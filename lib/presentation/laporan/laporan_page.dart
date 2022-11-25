import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:pertanian/core/unions/result_state.dart';
import 'package:pertanian/presentation/laporan/laporan_store_controller.dart';
import 'package:pertanian/presentation/laporan/widgets/list_data.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../core/style/color_palettes.dart';
import '../../core/style/custom_widget_style.dart';
import '../../core/style/sizes.dart';
import '../dashboard/widgets/dropdown/dropdown_label.dart';
import '../dashboard/widgets/tab_bar_menu.dart';
import 'cubit/laporan_cubit.dart';

class LaporanPage extends StatefulWidget {
  const LaporanPage({Key? key}) : super(key: key);

  static const routeName = '/laporan';

  @override
  State<LaporanPage> createState() => _LaporanPageState();
}

class _LaporanPageState extends State<LaporanPage> {
  final cLaporan = Get.put(LaporanStoreController());
  String query = '';

  @override
  void initState() {
    context.read<LaporanCubit>().getLaporan();
    super.initState();
  }

  @override
  void dispose() {
    cLaporan.queryEditingController.text = '';
    super.dispose();
  }

  _onChangeQuery(String value) {
    EasyDebounce.debounce(
      'change-query',
      const Duration(milliseconds: 1000),
      () {
        if (query != value) {
          query = value;
          context.read<LaporanCubit>().getLaporan();
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: SafeArea(
          child: RefreshIndicator(
            onRefresh: () async {
              context.read<LaporanCubit>().getLaporan();
            },
            child: NestedScrollView(
              headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
                return [
                  SliverAppBar(
                    pinned: true,
                    floating: false,
                    elevation: 0,
                    expandedHeight: 0,
                    automaticallyImplyLeading: false,
                    bottom: PreferredSize(
                      preferredSize: const Size.fromHeight(20),
                      child: Container(
                        height: 76,
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(width: Sizes.width24),
                            Text(
                              "Laporan",
                              style: TextStyle(
                                color: ColorPalettes.blackText,
                                fontWeight: FontWeight.w600,
                                fontSize: Sizes.sp18,
                              ),
                            ),
                            Expanded(
                              child: SizedBox(width: Sizes.width20),
                            ),
                            Container(
                              color: Colors.transparent,
                              width: Sizes.height200,
                              height: Sizes.height66,
                              margin: EdgeInsets.only(top: Sizes.height14),
                              child: Align(
                                alignment: Alignment.center,
                                child: TextFormField(
                                  controller: cLaporan.queryEditingController,
                                  keyboardType: TextInputType.text,
                                  textInputAction: TextInputAction.next,
                                  decoration: CustomWidgetStyle.formInputDecoration.copyWith(
                                    suffixIcon: Icon(
                                      Icons.search_rounded,
                                      size: Sizes.height30,
                                      color: ColorPalettes.greyIcon,
                                    ),
                                  ),
                                  onChanged: (value) => _onChangeQuery(value),
                                ),
                              ),
                            ),
                            SizedBox(width: Sizes.width24),
                          ],
                        ),
                      ),
                    ),
                    backgroundColor: ColorPalettes.bgGrey,
                    flexibleSpace: const FlexibleSpaceBar(
                      title: Text("Header"),
                      centerTitle: false,
                      background: SizedBox.shrink(),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: EdgeInsets.only(
                        right: Sizes.width24,
                        left: Sizes.width24,
                        bottom: Sizes.height24,
                        top: Sizes.height12,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Obx(
                              () => DropdownLabel(
                                label: 'Tahun',
                                selected: cLaporan.selectedYear.value,
                                listValue: cLaporan.listTahun,
                                onSelect: (year) {
                                  cLaporan.updateSelectedYear(year);
                                  context.read<LaporanCubit>().getLaporan();
                                },
                              ),
                            ),
                          ),
                          SizedBox(width: Sizes.width24),
                          BlocBuilder<LaporanCubit, LaporanState>(
                            buildWhen: (previous, current) =>
                                previous.getExportLaporanResultState != current.getExportLaporanResultState,
                            builder: (context, state) {
                              return SizedBox(
                                width: Sizes.height101,
                                height: Sizes.height40,
                                child: state.getExportLaporanResultState == const ResultState.loading()
                                    ? const Center(
                                        child: CircularProgressIndicator(),
                                      )
                                    : ElevatedButton(
                                        onPressed: () async {
                                          context.read<LaporanCubit>().getExportLaporan();
                                          // const urlString =
                                          //     "https://pertanian.inotive.id/export-laporan?select_year=2022&type=buah";
                                          // Uri urlUri = Uri.parse(urlString);

                                          // if (await canLaunchUrl(urlUri)) {
                                          //   await launchUrl(urlUri);
                                          // } else {
                                          //   print("Could not launch $urlUri");
                                          // }
                                        },
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: ColorPalettes.primary,
                                          minimumSize: Size(double.infinity, Sizes.height46),
                                          elevation: 0,
                                          padding: EdgeInsets.symmetric(horizontal: Sizes.width12),
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.import_export,
                                              size: Sizes.height20,
                                            ),
                                            Text(
                                              'Export',
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
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  TabBarMenu(
                    items: cLaporan.listType,
                    onTap: (index) {
                      cLaporan.updateSelectedType(index);
                    },
                  )
                ];
              },
              body: BlocBuilder<LaporanCubit, LaporanState>(
                builder: (context, state) {
                  return state.getLaporanResultState.maybeWhen(
                    loading: () => SizedBox(
                      height: MediaQuery.of(context).size.height * 0.5,
                      child: const Center(
                        child: CircularProgressIndicator(),
                      ),
                    ),
                    success: (data) {
                      return TabBarView(
                        children: [
                          ListData(items: state.fruits, refresh: () => context.read<LaporanCubit>().getLaporan()),
                          ListData(items: state.vegetables, refresh: () => context.read<LaporanCubit>().getLaporan()),
                          ListData(
                              items: state.biopharmaceuticals,
                              refresh: () => context.read<LaporanCubit>().getLaporan()),
                        ],
                      );
                    },
                    error: (failure) => const SizedBox.shrink(),
                    orElse: () => const SizedBox.shrink(),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
