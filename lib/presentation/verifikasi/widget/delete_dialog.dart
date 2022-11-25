import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pertanian/core/style/color_palettes.dart';
import 'package:pertanian/core/utils/get_util.dart';
import 'package:pertanian/domain/entities/laporan/fruit.dart';
import 'package:pertanian/presentation/verifikasi/cubit/verifikasi_cubit.dart';

import '../../../core/style/sizes.dart';
import '../../../core/widgets/loading_dialog.dart';

class DeleteDialog extends StatelessWidget {
  final Fruit data;

  const DeleteDialog({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: BlocBuilder<VerifikasiCubit, VerifikasiState>(
        builder: (context, state) {
          return Container(
            padding: EdgeInsets.only(bottom: Sizes.height16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(Sizes.radius10),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: IconButton(
                    onPressed: () => GetUtil.dismissDialog(),
                    icon: Icon(
                      Icons.close,
                      size: Sizes.width20,
                      color: ColorPalettes.blackText,
                    ),
                  ),
                ),
                state.deleteLaporanResultState.when(
                  initial: () => Column(
                    children: [
                      Stack(
                        children: [
                          trashIcon(),
                        ],
                      ),
                      contentDelete(
                        context,
                        data,
                      ),
                    ],
                  ),
                  loading: () => const LoadingDialog(),
                  success: (data) => Column(
                    children: [
                      Stack(
                        children: [
                          trashIcon(),
                          checkIcon(),
                        ],
                      ),
                      contentSuccess(context),
                    ],
                  ),
                  error: (e) => const Center(
                    child: Text('Something went wrong'),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

Widget trashIcon() {
  return Container(
    padding: EdgeInsets.all(Sizes.height10),
    height: Sizes.height66,
    width: Sizes.height66,
    child: SvgPicture.asset(
      'assets/icons/trash.svg',
      color: ColorPalettes.blackText,
      width: Sizes.width47,
      height: Sizes.width47,
      // fit: BoxFit.scaleDown,
    ),
  );
}

Widget checkIcon() {
  return Positioned(
    right: 1,
    top: 0,
    child: SvgPicture.asset(
      'assets/icons/round_check.svg',
      color: Colors.green,
      width: Sizes.width20,
    ),
  );
}

Widget failedIcon() {
  return Positioned(
    right: 1,
    top: 0,
    child: Icon(
      Icons.close,
      size: Sizes.width20,
      color: Colors.red,
    ),
  );
}

Widget contentDelete(BuildContext context, Fruit data) {
  return Container(
    margin: EdgeInsets.only(top: Sizes.height4),
    padding: EdgeInsets.symmetric(horizontal: Sizes.width16),
    child: Column(
      children: [
        Text(
          'Apakah Anda yakin menghapus file?',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: ColorPalettes.blackText,
            fontWeight: FontWeight.w400,
            fontSize: Sizes.sp16,
          ),
        ),
        SizedBox(height: Sizes.height12),
        ElevatedButton(
          onPressed: () => context.read<VerifikasiCubit>().deleteLaporan(data.id.toString()),
          style: ElevatedButton.styleFrom(
            backgroundColor: ColorPalettes.primary,
            minimumSize: Size(double.infinity, Sizes.height46),
            elevation: 0,
          ),
          child: Text(
            'Delete',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: Sizes.sp14,
            ),
          ),
        ),
        SizedBox(height: Sizes.height12),
        ElevatedButton(
          onPressed: () => GetUtil.dismissDialog(),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            minimumSize: Size(double.infinity, Sizes.height46),
            elevation: 0,
          ),
          child: Text(
            'Cancel',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: Sizes.sp14,
            ),
          ),
        )
      ],
    ),
  );
}

Widget contentSuccess(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(top: Sizes.height4),
    padding: EdgeInsets.symmetric(horizontal: Sizes.width16),
    child: Column(
      children: [
        Text(
          'File telah berhasil dihapus',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: ColorPalettes.blackText,
            fontWeight: FontWeight.w400,
            fontSize: Sizes.sp16,
          ),
        ),
        SizedBox(height: Sizes.height12),
        ElevatedButton(
          onPressed: () {
            GetUtil.dismissDialog();
            context.read<VerifikasiCubit>().getLaporanVerifikasi();
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: ColorPalettes.primary,
            minimumSize: Size(double.infinity, Sizes.height46),
            elevation: 0,
          ),
          child: Text(
            'Ok',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: Sizes.sp14,
            ),
          ),
        ),
      ],
    ),
  );
}
