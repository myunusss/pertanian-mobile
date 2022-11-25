import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pertanian/presentation/verifikasi/cubit/verifikasi_cubit.dart';
import 'package:pertanian/presentation/verifikasi/widget/button_input_baru.dart';

import '../../core/style/color_palettes.dart';
import '../../core/style/sizes.dart';
import '../laporan/widgets/list_data.dart';

class VerifikasiPage extends StatelessWidget {
  const VerifikasiPage({Key? key}) : super(key: key);

  static const routeName = '/verifikasi';

  @override
  Widget build(BuildContext context) {
    context.read<VerifikasiCubit>().getLaporanVerifikasi();

    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: SafeArea(
          child: RefreshIndicator(
            onRefresh: () async {
              context.read<VerifikasiCubit>().getLaporanVerifikasi();
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
                              "Verifikasi Laporan",
                              style: TextStyle(
                                color: ColorPalettes.blackText,
                                fontWeight: FontWeight.w600,
                                fontSize: Sizes.sp18,
                              ),
                            ),
                            Expanded(
                              child: SizedBox(width: Sizes.width20),
                            ),
                            ButtonInputBaru(
                              onUpdate: () => context.read<VerifikasiCubit>().getLaporanVerifikasi(),
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
                ];
              },
              body: BlocBuilder<VerifikasiCubit, VerifikasiState>(
                builder: (context, state) {
                  return state.getLaporanVerifikasiResultState.maybeWhen(
                    loading: () => SizedBox(
                      height: MediaQuery.of(context).size.height * 0.5,
                      child: const Center(
                        child: CircularProgressIndicator(),
                      ),
                    ),
                    success: (data) {
                      return RefreshIndicator(
                        onRefresh: () async {
                          context.read<VerifikasiCubit>().getLaporanVerifikasi();
                        },
                        child: ListData(
                          items: state.fruits,
                          isEditable: true,
                          refresh: () => context.read<VerifikasiCubit>().getLaporanVerifikasi(),
                        ),
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
