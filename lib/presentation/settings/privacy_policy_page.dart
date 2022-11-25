import 'package:flutter/material.dart';
import 'package:pertanian/core/const/strings.dart';
import 'package:pertanian/core/style/color_palettes.dart';

import '../../core/style/sizes.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({Key? key}) : super(key: key);

  static const routeName = '/privacy-policy';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Privacy & Policy'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(Sizes.width30),
        child: Text(
          Strings.privacyPolicy,
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
