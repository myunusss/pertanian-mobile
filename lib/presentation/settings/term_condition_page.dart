import 'package:flutter/material.dart';
import 'package:pertanian/core/const/strings.dart';
import 'package:pertanian/core/style/color_palettes.dart';

import '../../core/style/sizes.dart';

class TermConditionPage extends StatelessWidget {
  const TermConditionPage({Key? key}) : super(key: key);

  static const routeName = '/term-conditions';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Term & Conditions'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(Sizes.width30),
        child: Text(
          Strings.termCondition,
          style: TextStyle(
            color: ColorPalettes.blackText,
            fontWeight: FontWeight.w400,
            fontSize: Sizes.sp16,
          ),
        ),
      ),
    );
  }
}
