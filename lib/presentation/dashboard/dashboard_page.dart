import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:pertanian/core/style/color_palettes.dart';
import 'package:pertanian/core/style/sizes.dart';
import 'package:pertanian/presentation/dashboard/cubit/dashboard_cubit.dart';
import 'package:pertanian/presentation/dashboard/dashboard_store_controller.dart';
import 'package:pertanian/presentation/dashboard/widgets/column_chart.dart';
import 'package:pertanian/presentation/dashboard/widgets/pie_chart.dart';
import 'package:pertanian/presentation/dashboard/widgets/dropdown/dropdown_label.dart';
import 'package:pertanian/presentation/dashboard/widgets/tab_bar_menu.dart';
import 'package:pertanian/presentation/saran/saran_page.dart';

import '../../core/utils/navigation_util.dart';
import '../../data/local/local_data_source.dart';
import '../../di/injection_container.dart';
import 'widgets/header.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  static const routeName = '/dashboard';

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final cDashboard = Get.put(DashboardStoreController());

  @override
  void initState() {
    context.read<DashboardCubit>().getComodities('buah').then((value) {
      context.read<DashboardCubit>().getDashboard();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final showHeader = getIt.get<LocalDataSource>().getToken() != '';

    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: SafeArea(
          child: NestedScrollView(
            headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  pinned: true,
                  floating: false,
                  elevation: 0,
                  expandedHeight: showHeader ? 0 : Sizes.width185,
                  automaticallyImplyLeading: false,
                  bottom: PreferredSize(
                    preferredSize: const Size.fromHeight(20),
                    child: Container(
                      height: 76,
                      color: Colors.white,
                      child: Row(
                        children: [
                          SizedBox(width: Sizes.width24),
                          Text(
                            "Dashboard",
                            style: TextStyle(
                              color: ColorPalettes.blackText,
                              fontWeight: FontWeight.w600,
                              fontSize: Sizes.sp18,
                            ),
                          ),
                          Expanded(
                            child: SizedBox(width: Sizes.width20),
                          ),
                          SizedBox(
                            width: Sizes.height101,
                            height: Sizes.height40,
                            child: ElevatedButton(
                              onPressed: () => NavigationUtil.pushNamed(SaranPage.routeName),
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
                                    'Saran',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: Sizes.sp12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: Sizes.width24),
                        ],
                      ),
                    ),
                  ),
                  backgroundColor: ColorPalettes.bgGrey,
                  flexibleSpace: FlexibleSpaceBar(
                    centerTitle: false,
                    title: Text(
                      "Header",
                      style: TextStyle(
                        color: ColorPalettes.blackText,
                        fontWeight: FontWeight.w700,
                        fontSize: Sizes.sp14,
                      ),
                    ),
                    background: showHeader ? const SizedBox.shrink() : const Header(),
                  ),
                ),
                TabBarMenu(
                  items: cDashboard.listType,
                  onTap: (index) {
                    cDashboard.updateSelectedType(index);
                    context.read<DashboardCubit>().getComodities(cDashboard.selectedType.value).then((value) {
                      context.read<DashboardCubit>().getDashboard();
                    });
                  },
                )
              ];
            },
            body: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: Sizes.width26,
                  vertical: Sizes.width12,
                ),
                child: Column(
                  children: [
                    SizedBox(height: Sizes.height12),
                    Obx(
                      () => DropdownLabel(
                        label: 'Daerah',
                        selected: cDashboard.selectedDaerah.value,
                        listValue: cDashboard.listDaerah,
                        onSelect: (daerah) {
                          cDashboard.updateSelectedDaerah(daerah);
                          context.read<DashboardCubit>().getDashboard();
                        },
                      ),
                    ),
                    SizedBox(height: Sizes.height28),
                    BlocBuilder<DashboardCubit, DashboardState>(
                      builder: (context, state) {
                        if (state.comodities.isNotEmpty && state.comodityId != null) {
                          return DropdownLabel(
                            label: 'Komoditas',
                            selected:
                                state.comodities.firstWhere((element) => element.id == state.comodityId).name ?? '',
                            listValue: state.comodities.map((e) => e.name).toList(),
                            onSelect: (value) {
                              context.read<DashboardCubit>().updateComodityId(value);
                              context.read<DashboardCubit>().getDashboard();
                            },
                          );
                        } else {
                          return const SizedBox.shrink();
                        }
                      },
                    ),
                    SizedBox(height: Sizes.height28),
                    Obx(
                      () => DropdownLabel(
                        label: 'Kategori',
                        selected: cDashboard.selectedCategory.value,
                        listValue: cDashboard.listCategory,
                        onSelect: (category) {
                          cDashboard.updateSelectedCategory(category);
                          context.read<DashboardCubit>().getDashboard();
                        },
                      ),
                    ),
                    SizedBox(height: Sizes.height12),
                    BlocBuilder<DashboardCubit, DashboardState>(
                      builder: (context, state) {
                        return state.getDashboardResultState.maybeWhen(
                          loading: () => SizedBox(
                            height: MediaQuery.of(context).size.height * 0.5,
                            child: const Center(
                              child: CircularProgressIndicator(),
                            ),
                          ),
                          success: (data) {
                            final data = state.dashboardData;
                            List<ChartItemData> items = [];
                            if (data!.wilayahArray!.isNotEmpty) {
                              for (var i = 0; i < data.wilayahArray!.length; i++) {
                                final dataColor = data.colorArray ?? [];
                                if (dataColor.isNotEmpty) {
                                  final color = Color.fromRGBO(
                                    dataColor[i][0],
                                    dataColor[i][1],
                                    dataColor[i][2],
                                    dataColor[i][3].toDouble(),
                                  );
                                  items.add(
                                    ChartItemData(
                                      data.wilayahArray![i],
                                      data.sumKategoryPerWilayah![i],
                                      color,
                                    ),
                                  );
                                }
                              }
                              return SizedBox(
                                height: MediaQuery.of(context).size.height * 0.5,
                                child: PieChart(
                                  items: items,
                                ),
                              );
                            } else {
                              return const SizedBox.shrink();
                            }
                          },
                          error: (failure) => const SizedBox.shrink(),
                          orElse: () => const SizedBox.shrink(),
                        );
                      },
                    ),
                    SizedBox(height: Sizes.height28),
                    Divider(
                      color: ColorPalettes.greyDark100,
                      height: Sizes.height8,
                    ),
                    SizedBox(height: Sizes.height28),
                    Obx(
                      () => DropdownLabel(
                        label: 'Tahun',
                        selected: cDashboard.selectedYear.value,
                        listValue: cDashboard.listTahun,
                        onSelect: (year) {
                          cDashboard.updateSelectedYear(year);
                          context.read<DashboardCubit>().getDashboard();
                        },
                      ),
                    ),
                    SizedBox(height: Sizes.height28),
                    BlocBuilder<DashboardCubit, DashboardState>(
                      builder: (context, state) {
                        return state.getDashboardResultState.maybeWhen(
                          loading: () => SizedBox(
                            height: MediaQuery.of(context).size.height * 0.5,
                            child: const Center(
                              child: CircularProgressIndicator(),
                            ),
                          ),
                          success: (data) {
                            List<ColumnChartData> items = [];
                            final data = state.dashboardData;
                            int highest = 0;
                            for (var i = 0; i < data!.arrKomoditas!.length; i++) {
                              if (highest < data.arrSumHargaProdusen![i]) {
                                highest = data.arrSumHargaProdusen![i];
                              }

                              if (highest < data.arrSumHargaGrosir![i]) {
                                highest = data.arrSumHargaGrosir![i];
                              }

                              if (highest < data.arrSumHargaEceran![i]) {
                                highest = data.arrSumHargaEceran![i];
                              }

                              items.add(
                                ColumnChartData(
                                  data.arrKomoditas![i].toString(),
                                  data.arrSumHargaProdusen![i],
                                  data.arrSumHargaGrosir![i],
                                  data.arrSumHargaEceran![i],
                                ),
                              );
                            }
                            return SizedBox(
                              height: MediaQuery.of(context).size.height * 0.5,
                              child: ColumnChart(
                                items: items,
                                max: highest,
                              ),
                            );
                          },
                          error: (failure) => const SizedBox.shrink(),
                          orElse: () => const SizedBox.shrink(),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
