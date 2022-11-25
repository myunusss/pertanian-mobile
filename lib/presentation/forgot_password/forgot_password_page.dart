import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/const/enums.dart';
import '../../core/const/strings.dart';
import '../../core/style/color_palettes.dart';
import '../../core/style/sizes.dart';
import 'cubit/forgot_password_cubit.dart';
import 'widgets/form_email.dart';
import 'widgets/form_new_password.dart';
import 'widgets/form_otp.dart';

class ForgotPasswordPage extends StatefulWidget {
  static const routeName = '/forgot-password';

  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  _buildContent(status) {
    switch (status) {
      case ResetPasswordSteps.sendEmail:
        return const FormEmail();
      case ResetPasswordSteps.sendOtp:
        return const FormOTP();
      case ResetPasswordSteps.sendNewPassword:
        return const FormNewPassword();
      default:
        return Container(
          width: MediaQuery.of(context).size.width,
          height: 200,
          alignment: Alignment.center,
          child: const Text('Page not found!'),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ForgotPasswordCubit, ForgotPasswordState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Text(
              Strings.forgotPasswordHeader,
              style: TextStyle(
                color: ColorPalettes.primary,
                fontSize: Sizes.sp20,
              ),
            ),
            centerTitle: true,
            elevation: 0,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              iconSize: Sizes.width14,
              onPressed: () {
                if (state.resetStep != ResetPasswordSteps.sendEmail) {
                  final backStep = state.resetStep == ResetPasswordSteps.sendNewPassword
                      ? ResetPasswordSteps.sendOtp
                      : ResetPasswordSteps.sendEmail;
                  context.read<ForgotPasswordCubit>().changeStep(backStep);
                } else {
                  Navigator.pop(context);
                }
              },
            ),
          ),
          body: SingleChildScrollView(
            child: _buildContent(state.resetStep),
          ),
        );
      },
    );
  }
}
