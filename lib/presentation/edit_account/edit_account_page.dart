import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:pertanian/core/extensions/snackbar_ext.dart';
import 'package:pertanian/core/unions/result_state.dart';
import 'package:pertanian/presentation/edit_account/cubit/edit_account_cubit.dart';
import 'package:pertanian/presentation/edit_account/edit_account_store_controller.dart';
import 'package:pertanian/presentation/settings/cubit/settings_cubit.dart';

import '../../core/const/strings.dart';
import '../../core/style/color_palettes.dart';
import '../../core/style/custom_widget_style.dart';
import '../../core/style/sizes.dart';
import '../../core/unions/failure.dart';
import '../../core/utils/form_validator.dart';
import '../../core/utils/get_util.dart';
import '../../core/widgets/label_form.dart';
import '../../core/widgets/loading_dialog.dart';

final editAccountFormKey = GlobalKey<FormState>();

class EditAccountPage extends StatelessWidget {
  EditAccountPage({Key? key}) : super(key: key);

  static const routeName = '/edit-account';

  final cAccount = Get.put(EditAccountStoreController());

  _updateAccount(BuildContext context) {
    FocusManager.instance.primaryFocus?.unfocus();
    final name = cAccount.nameEditingController.text;
    final email = cAccount.emailEditingController.text;
    final password = cAccount.passwordEditingController.text;
    final confirmPassword = cAccount.passwordConfirmationEditingController.text;

    if (editAccountFormKey.currentState!.validate()) {
      if (password != confirmPassword) {
        GetUtil.context.showErrorSnackbar('Confirm password harus sama dengan password!');
      } else {
        context.read<EditAccountCubit>().editAccount(
              name,
              email,
              password,
            );
      }
    }
  }

  _handleUpdateAccount(ResultState updateResult, BuildContext context) {
    updateResult.maybeWhen(
      loading: () async => await GetUtil.showDialog(
        const LoadingDialog(),
        barrierDismissible: false,
      ),
      success: (data) async {
        GetUtil.dismissDialog();
        GetUtil.context.showSuccessSnackbar(Strings.successUpdateProfile);
        Navigator.pop(context, true);
      },
      error: (failure) {
        GetUtil.dismissDialog();
        GetUtil.context.showErrorSnackbar(Failure.getErrorMessage(failure));
      },
      orElse: () => null,
    );
  }

  @override
  Widget build(BuildContext context) {
    final user = context.read<SettingsCubit>().state.user;
    cAccount.nameEditingController.text = user?.name ?? '';
    cAccount.emailEditingController.text = user?.email ?? '';

    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Account'),
      ),
      body: Form(
        key: editAccountFormKey,
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.symmetric(horizontal: Sizes.width38),
          children: [
            SizedBox(height: Sizes.height37),
            const LabelForm(text: 'Name'),
            SizedBox(height: Sizes.height8),
            TextFormField(
              controller: cAccount.nameEditingController,
              keyboardType: TextInputType.name,
              textInputAction: TextInputAction.done,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Nama tidak boleh kosong!';
                } else {
                  return null;
                }
              },
              decoration: CustomWidgetStyle.formInputDecoration,
            ),
            SizedBox(height: Sizes.height16),
            const LabelForm(text: 'Email'),
            SizedBox(height: Sizes.height8),
            TextFormField(
              controller: cAccount.emailEditingController,
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.done,
              validator: (email) {
                return FormValidator.validateEmail(context, email!);
              },
              decoration: CustomWidgetStyle.formInputDecoration,
            ),
            SizedBox(height: Sizes.height16),
            const LabelForm(text: 'Password'),
            SizedBox(height: Sizes.height8),
            Obx(
              () => TextFormField(
                controller: cAccount.passwordEditingController,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.done,
                obscureText: cAccount.hidePassword.value,
                validator: (password) {
                  return FormValidator.validatePassword(context, password!);
                },
                decoration: CustomWidgetStyle.formInputDecoration.copyWith(
                  suffixIcon: Container(
                    width: Sizes.width60,
                    alignment: Alignment.center,
                    child: InkWell(
                      onTap: () {
                        cAccount.updateHidePassword();
                      },
                      child: Text(
                        cAccount.suffixPasswordText.value,
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
            SizedBox(height: Sizes.height16),
            const LabelForm(text: 'Confirm Password'),
            SizedBox(height: Sizes.height8),
            Obx(
              () => TextFormField(
                controller: cAccount.passwordConfirmationEditingController,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.done,
                obscureText: cAccount.hidePassword.value,
                validator: (password) {
                  return FormValidator.validatePassword(
                    context,
                    password!,
                    textError: 'Confirmation Password tidak boleh kosong',
                  );
                },
                decoration: CustomWidgetStyle.formInputDecoration.copyWith(
                  suffixIcon: Container(
                    width: Sizes.width60,
                    alignment: Alignment.center,
                    child: InkWell(
                      onTap: () {
                        cAccount.updateHidePassword();
                      },
                      child: Text(
                        cAccount.suffixPasswordText.value,
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
            SizedBox(height: Sizes.height40),
            BlocListener<EditAccountCubit, EditAccountState>(
              listenWhen: (previous, current) => previous.editAccountResultState != current.editAccountResultState,
              listener: (context, state) => _handleUpdateAccount(state.editAccountResultState, context),
              child: ElevatedButton(
                onPressed: () => _updateAccount(context),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, Sizes.height46),
                  elevation: 0,
                ),
                child: Text(
                  'Update',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: Sizes.sp14,
                  ),
                ),
              ),
            ),
            SizedBox(height: Sizes.height16),
          ],
        ),
      ),
    );
  }
}
