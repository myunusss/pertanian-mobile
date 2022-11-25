import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:pertanian/core/const/strings.dart';
import 'package:pertanian/core/style/color_palettes.dart';
import 'package:pertanian/core/style/custom_widget_style.dart';
import 'package:pertanian/core/style/sizes.dart';
import 'package:pertanian/core/unions/failure.dart';
import 'package:pertanian/core/unions/result_state.dart';
import 'package:pertanian/core/utils/form_validator.dart';
import 'package:pertanian/core/utils/navigation_util.dart';
import 'package:pertanian/core/widgets/label_form.dart';
import 'package:pertanian/presentation/forgot_password/forgot_password_page.dart';
import 'package:pertanian/presentation/home/home_page.dart';
import 'package:pertanian/presentation/login/cubit/login_cubit.dart';
import 'package:pertanian/presentation/login/login_store_controller.dart';
import 'package:pertanian/presentation/login/widgets/register_info.dart';
import 'package:pertanian/presentation/login/widgets/remember_me.dart';

final loginFormKey = GlobalKey<FormState>();

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  static const routeName = '/login';

  _handleLogin(ResultState<dynamic> state) {
    state.maybeWhen(
      loading: () => null,
      success: (data) async {
        NavigationUtil.pushReplacementNamed(HomePage.routeName);
      },
      error: (failure) => null,
      orElse: () => null,
    );
  }

  final cLogin = Get.put(LoginStoreController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: loginFormKey,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: Sizes.width38),
          children: [
            SizedBox(height: Sizes.height82),
            Text(
              Strings.login,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: Sizes.sp42,
              ),
            ),
            SizedBox(height: Sizes.height53),
            const LabelForm(text: Strings.email),
            SizedBox(height: Sizes.height8),
            TextFormField(
              controller: cLogin.emailEditingController,
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.done,
              validator: (email) {
                return FormValidator.validateEmail(context, email!);
              },
              decoration: CustomWidgetStyle.formInputDecoration,
            ),
            SizedBox(height: Sizes.height16),
            const LabelForm(text: Strings.password),
            SizedBox(height: Sizes.height8),
            Obx(
              () => TextFormField(
                controller: cLogin.passwordEditingController,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.done,
                obscureText: cLogin.hidePassword.value,
                validator: (password) {
                  return FormValidator.validatePassword(context, password!);
                },
                decoration: CustomWidgetStyle.formInputDecoration.copyWith(
                  suffixIcon: Container(
                    width: Sizes.width60,
                    alignment: Alignment.center,
                    child: InkWell(
                      onTap: () {
                        cLogin.updateHidePassword();
                      },
                      child: Text(
                        cLogin.suffixPasswordText.value,
                        style: TextStyle(
                          color: ColorPalettes.primary,
                          fontWeight: FontWeight.w600,
                          fontSize: Sizes.sp13,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: Sizes.height12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Obx(
                  () => RememberMe(
                    isChecked: cLogin.rememberMe.value,
                    onChange: (value) => cLogin.updateRememberMe(),
                  ),
                ),
                InkWell(
                  onTap: () {
                    NavigationUtil.pushNamed(ForgotPasswordPage.routeName);
                  },
                  child: const Text(
                    Strings.forgotPassword,
                    style: TextStyle(
                      color: ColorPalettes.primary,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: Sizes.height40),
            BlocListener<LoginCubit, LoginState>(
              listenWhen: (previous, current) => previous.loginResultState != current.loginResultState,
              listener: (context, state) => _handleLogin(state.loginResultState),
              child: BlocBuilder<LoginCubit, LoginState>(
                buildWhen: (previous, current) => previous.loginResultState != current.loginResultState,
                builder: (context, state) {
                  return state.loginResultState.when(
                    initial: () => ElevatedButton(
                      onPressed: () {
                        if (loginFormKey.currentState!.validate()) {
                          context.read<LoginCubit>().doLogin(
                                cLogin.emailEditingController.text,
                                cLogin.passwordEditingController.text,
                                cLogin.rememberMe.value,
                              );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(double.infinity, Sizes.height46),
                        elevation: 0,
                      ),
                      child: Text(
                        Strings.login,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: Sizes.sp14,
                        ),
                      ),
                    ),
                    loading: () => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    success: (data) {
                      return const Center(
                        child: Text(
                          'Login berhasil',
                          style: TextStyle(
                            color: ColorPalettes.primary,
                          ),
                        ),
                      );
                    },
                    error: (failure) => Center(
                      child: Text(
                        Failure.getErrorMessage(failure),
                        style: const TextStyle(
                          color: Colors.red,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.26),
            const RegisterInfo()
          ],
        ),
      ),
    );
  }
}
