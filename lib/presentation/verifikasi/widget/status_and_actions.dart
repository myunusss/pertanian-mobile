import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pertanian/core/style/color_palettes.dart';
import 'package:pertanian/core/style/sizes.dart';
import 'package:pertanian/core/utils/get_util.dart';
import 'package:pertanian/domain/entities/laporan/fruit.dart';
import 'package:pertanian/presentation/verifikasi/widget/delete_dialog.dart';

import '../../../core/utils/navigation_util.dart';
import '../../input_laporan/input_laporan_page.dart';
import '../cubit/verifikasi_cubit.dart';

class StatusAndActions extends StatelessWidget {
  final Fruit data;
  final Function() onUpdate;

  const StatusAndActions({
    Key? key,
    required this.data,
    required this.onUpdate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Sizes.height50,
      padding: EdgeInsets.symmetric(horizontal: Sizes.width18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          StatusItem(isVerified: data.isVerified == 1 ? true : false),
          Row(
            children: [
              TextButton(
                onPressed: () async {
                  final result = await NavigationUtil.pushNamed(
                    InputLaporanPage.routeName,
                    arguments: data,
                  );
                  if (result == true) {
                    onUpdate();
                  }
                },
                child: Text(
                  'Edit',
                  style: TextStyle(
                    fontSize: Sizes.sp16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  context.read<VerifikasiCubit>().resetDeleteState();
                  GetUtil.showDialog(
                    DeleteDialog(data: data),
                    barrierDismissible: false,
                  );
                },
                child: Text(
                  'Hapus',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: Sizes.sp16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class StatusItem extends StatelessWidget {
  final bool isVerified;

  const StatusItem({
    Key? key,
    required this.isVerified,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: Sizes.height8,
        vertical: Sizes.height4,
      ),
      decoration: BoxDecoration(
        color: isVerified ? ColorPalettes.primaryBg : ColorPalettes.bgGrey5,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        children: [
          isVerified
              ? Icon(
                  Icons.check,
                  size: Sizes.height20,
                  color: ColorPalettes.primary,
                )
              : Icon(
                  Icons.close,
                  size: Sizes.height20,
                  color: Colors.grey,
                ),
          Text(
            isVerified ? 'Disetujui' : 'Ditolak',
            style: TextStyle(
              color: isVerified ? ColorPalettes.primary : Colors.grey,
              fontWeight: FontWeight.w500,
              fontSize: Sizes.sp14,
            ),
          ),
        ],
      ),
    );
  }
}
