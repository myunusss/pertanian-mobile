import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../core/const/strings.dart';
import '../../../core/style/color_palettes.dart';
import '../../../core/style/sizes.dart';

class RegisterInfo extends StatelessWidget {
  const RegisterInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: Sizes.height24),
      alignment: Alignment.bottomCenter,
      child: RichText(
        text: TextSpan(
          text: Strings.registerInfo,
          style: TextStyle(
            color: ColorPalettes.grey75,
            fontSize: Sizes.sp16,
          ),
          children: [
            TextSpan(
              text: Strings.register,
              style: TextStyle(
                color: ColorPalettes.primary,
                fontSize: Sizes.sp16,
                fontWeight: FontWeight.w500,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  print('Register');
                },
            ),
          ],
        ),
      ),
    );
  }
}
