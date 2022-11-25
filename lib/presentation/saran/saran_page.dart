import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:pertanian/core/extensions/snackbar_ext.dart';
import 'package:pertanian/core/style/sizes.dart';
import 'package:pertanian/presentation/saran/cubit/saran_cubit.dart';
import 'package:pertanian/presentation/saran/saran_page_store_controller.dart';

import '../../core/const/strings.dart';
import '../../core/style/color_palettes.dart';
import '../../core/style/custom_widget_style.dart';
import '../../core/unions/failure.dart';
import '../../core/unions/result_state.dart';
import '../../core/utils/get_util.dart';
import '../../core/widgets/loading_dialog.dart';

final saranFormKey = GlobalKey<FormState>();

class SaranPage extends StatelessWidget {
  SaranPage({Key? key}) : super(key: key);

  static const routeName = '/saran';

  final cSaran = Get.put(SaranPageStoreController());

  _postSaran(BuildContext context) {
    FocusManager.instance.primaryFocus?.unfocus();
    final name = cSaran.nameEditingController.text;
    final saran = cSaran.saranEditingController.text;

    if (saranFormKey.currentState!.validate()) {
      context.read<SaranCubit>().postSaran(
            name,
            saran,
          );
    }
  }

  _handlePostSaran(ResultState postResult, BuildContext context) {
    postResult.maybeWhen(
      loading: () async => await GetUtil.showDialog(
        const LoadingDialog(),
        barrierDismissible: false,
      ),
      success: (data) async {
        GetUtil.dismissDialog();
        GetUtil.context.showSuccessSnackbar(Strings.successPostSaran);
        cSaran.nameEditingController.text = '';
        cSaran.saranEditingController.text = '';
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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Masukkan Saran'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(Sizes.height30),
          child: Form(
            key: saranFormKey,
            child: Column(
              children: [
                TextFormField(
                  controller: cSaran.nameEditingController,
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.done,
                  decoration: CustomWidgetStyle.formInputDecorationBorder.copyWith(
                    hintText: 'Masukkan nama',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Nama tidak boleh kosong!';
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(height: Sizes.height25),
                TextFormField(
                  controller: cSaran.saranEditingController,
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.done,
                  decoration: CustomWidgetStyle.formInputDecorationBorder.copyWith(
                    hintText: 'Masukkan saran',
                  ),
                  maxLines: 8,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Saran tidak boleh kosong!';
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(height: Sizes.height25),
                BlocListener<SaranCubit, SaranState>(
                  listenWhen: (previous, current) => previous.postSaranResultState != current.postSaranResultState,
                  listener: (context, state) => _handlePostSaran(state.postSaranResultState, context),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: SizedBox(
                      width: Sizes.height100,
                      height: Sizes.height40,
                      child: ElevatedButton(
                        onPressed: () => _postSaran(context),
                        style: ElevatedButton.styleFrom(
                          primary: ColorPalettes.primary,
                          minimumSize: Size(double.infinity, Sizes.height46),
                          elevation: 0,
                        ),
                        child: Text(
                          'Submit',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: Sizes.sp14,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
