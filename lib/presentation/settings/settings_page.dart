import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pertanian/core/extensions/snackbar_ext.dart';
import 'package:pertanian/core/style/color_palettes.dart';
import 'package:pertanian/core/utils/navigation_util.dart';
import 'package:pertanian/presentation/edit_account/edit_account_page.dart';
import 'package:pertanian/presentation/settings/cubit/settings_cubit.dart';
import 'package:pertanian/presentation/settings/privacy_policy_page.dart';
import 'package:pertanian/presentation/settings/term_condition_page.dart';
import 'package:pertanian/presentation/settings/widgets/menu_item.dart';

import '../../core/style/sizes.dart';
import '../../core/unions/failure.dart';
import '../../core/unions/result_state.dart';
import '../../core/utils/get_util.dart';
import '../../core/widgets/loading_dialog.dart';
import '../login/login_page.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  static const routeName = '/settings';

  void _doLogout(BuildContext context) async {
    context.read<SettingsCubit>().doLogOut();
  }

  _handleLogoutResult(BuildContext context, ResultState<dynamic> logoutResult) {
    logoutResult.maybeWhen(
      loading: () async => await GetUtil.showDialog(
        const LoadingDialog(),
        barrierDismissible: false,
      ),
      success: (data) async {
        // GetUtil.dismissDialog();
        // GetUtil.context.showSuccessSnackbar(Strings.successLogout);
        await NavigationUtil.pushNamedAndRemoveUntil(LoginPage.routeName);
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
    context.read<SettingsCubit>().getUserProfile();

    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              pinned: true,
              floating: false,
              elevation: 0,
              expandedHeight: Sizes.width185,
              automaticallyImplyLeading: false,
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(24),
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: Sizes.width24,
                    vertical: Sizes.width14,
                  ),
                  color: ColorPalettes.primary,
                  alignment: Alignment.centerLeft,
                  child: BlocBuilder<SettingsCubit, SettingsState>(
                    builder: (context, state) {
                      return state.getUserProfileResultState.maybeWhen(
                        loading: () => const Center(
                          child: CircularProgressIndicator(
                            color: Colors.white,
                          ),
                        ),
                        success: (data) => Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              data?.name ?? '-',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: Sizes.sp20,
                              ),
                            ),
                            Text(
                              data?.email ?? '-',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: Sizes.sp16,
                              ),
                            ),
                          ],
                        ),
                        error: (failure) => Center(
                          child: Text(
                            Failure.getErrorMessage(failure),
                            style: TextStyle(
                              color: Colors.grey.shade100,
                            ),
                          ),
                        ),
                        orElse: () => const SizedBox.shrink(),
                      );
                    },
                  ),
                ),
              ),
              backgroundColor: ColorPalettes.primary,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: const SizedBox(),
                background: Container(
                  padding: EdgeInsets.all(Sizes.width24),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Pengaturan",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: Sizes.sp20,
                    ),
                  ),
                ),
              ),
            ),
            SliverAppBar(
              pinned: true,
              backgroundColor: Colors.transparent,
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(172),
                child: Column(
                  children: [
                    MenuItemSettings(
                      title: 'Edit Account',
                      asset: 'assets/icons/edit.svg',
                      onPress: () async {
                        final state = context.read<SettingsCubit>();
                        final result = await NavigationUtil.pushNamed(EditAccountPage.routeName);
                        if (result == true) {
                          state.getUserProfile();
                        }
                      },
                    ),
                    MenuItemSettings(
                      title: 'Terms and Conditions',
                      asset: 'assets/icons/toc.svg',
                      onPress: () async => await NavigationUtil.pushNamed(TermConditionPage.routeName),
                    ),
                    MenuItemSettings(
                      title: 'Privacy Policy',
                      asset: 'assets/icons/privacy_policy.svg',
                      onPress: () async => await NavigationUtil.pushNamed(PrivacyPolicyPage.routeName),
                    ),
                    BlocListener<SettingsCubit, SettingsState>(
                      listenWhen: (previous, current) => previous.logoutResultState != current.logoutResultState,
                      listener: (context, state) => _handleLogoutResult(context, state.logoutResultState),
                      child: MenuItemSettings(
                        title: 'Log Out',
                        asset: 'assets/icons/logout.svg',
                        onPress: () => _doLogout(context),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ];
        },
        body: const SizedBox.shrink(),
      ),
    );
  }
}
