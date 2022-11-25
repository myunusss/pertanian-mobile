import 'package:flutter/material.dart';
import 'package:pertanian/core/const/strings.dart';
import 'package:pertanian/core/style/color_palettes.dart';
import 'package:pertanian/core/style/sizes.dart';
import 'package:pertanian/core/utils/navigation_util.dart';
import 'package:pertanian/presentation/login/login_page.dart';

class ButtonLogin extends StatelessWidget {
  const ButtonLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: Sizes.height14),
      width: Sizes.width74,
      height: Sizes.height36,
      child: ElevatedButton(
        onPressed: () {
          NavigationUtil.pushNamed(LoginPage.routeName);
        },
        style: ElevatedButton.styleFrom(
          primary: Colors.transparent,
          shadowColor: ColorPalettes.primary,
          minimumSize: Size(double.infinity, Sizes.height46),
          elevation: 0,
          side: const BorderSide(
            width: 1,
            color: ColorPalettes.primary,
          ),
        ),
        child: Text(
          Strings.login.toUpperCase(),
          style: TextStyle(
            color: ColorPalettes.primary,
            fontWeight: FontWeight.w600,
            fontSize: Sizes.sp12,
          ),
        ),
      ),
    );
  }
}
