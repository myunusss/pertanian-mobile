import 'package:flutter/material.dart';
import 'package:pertanian/domain/entities/laporan/fruit.dart';

import '../../../core/style/color_palettes.dart';
import '../../../core/style/sizes.dart';

class DetailsContent extends StatelessWidget {
  final Fruit? data;

  const DetailsContent({
    Key? key,
    this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: Sizes.width12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Text(
                'L. TANAM',
                style: TextStyle(
                  color: ColorPalettes.greyFormBorder,
                  fontSize: Sizes.sp14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                data?.luasTanam ?? '-',
                style: TextStyle(
                  color: ColorPalettes.primary,
                  fontSize: Sizes.sp16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                'TAN. HASIL',
                style: TextStyle(
                  color: ColorPalettes.greyFormBorder,
                  fontSize: Sizes.sp14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                data?.tanamHasil ?? '-',
                style: TextStyle(
                  color: ColorPalettes.primary,
                  fontSize: Sizes.sp16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                'PRODUKSI',
                style: TextStyle(
                  color: ColorPalettes.greyFormBorder,
                  fontSize: Sizes.sp14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                data?.jumlahProduksi ?? '-',
                style: TextStyle(
                  color: ColorPalettes.primary,
                  fontSize: Sizes.sp16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                'PROVITAS',
                style: TextStyle(
                  color: ColorPalettes.greyFormBorder,
                  fontSize: Sizes.sp14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                data?.provitas ?? '-',
                style: TextStyle(
                  color: ColorPalettes.primary,
                  fontSize: Sizes.sp16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
