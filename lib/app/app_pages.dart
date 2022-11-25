import 'package:get/route_manager.dart';
import 'package:pertanian/presentation/edit_account/edit_account_page.dart';
import 'package:pertanian/presentation/forgot_password/forgot_password_page.dart';
import 'package:pertanian/presentation/home/home_page.dart';
import 'package:pertanian/presentation/input_laporan/input_laporan_page.dart';
import 'package:pertanian/presentation/laporan/laporan_page.dart';
import 'package:pertanian/presentation/login/login_page.dart';
import 'package:pertanian/presentation/saran/saran_page.dart';
import 'package:pertanian/presentation/settings/privacy_policy_page.dart';
import 'package:pertanian/presentation/settings/settings_page.dart';
import 'package:pertanian/presentation/settings/term_condition_page.dart';
import 'package:pertanian/presentation/verifikasi/verifikasi_page.dart';

class AppPages {
  const AppPages._();

  static final List<GetPage> routes = [
    GetPage(
      name: LoginPage.routeName,
      page: () => LoginPage(),
    ),
    GetPage(
      name: HomePage.routeName,
      page: () => HomePage(),
    ),
    GetPage(
      name: SaranPage.routeName,
      page: () => SaranPage(),
    ),
    GetPage(
      name: SettingsPage.routeName,
      page: () => const SettingsPage(),
    ),
    GetPage(
      name: EditAccountPage.routeName,
      page: () => EditAccountPage(),
    ),
    GetPage(
      name: PrivacyPolicyPage.routeName,
      page: () => const PrivacyPolicyPage(),
    ),
    GetPage(
      name: TermConditionPage.routeName,
      page: () => const TermConditionPage(),
    ),
    GetPage(
      name: LaporanPage.routeName,
      page: () => const LaporanPage(),
    ),
    GetPage(
      name: VerifikasiPage.routeName,
      page: () => const VerifikasiPage(),
    ),
    GetPage(
      name: InputLaporanPage.routeName,
      page: () => const InputLaporanPage(),
    ),
    GetPage(
      name: ForgotPasswordPage.routeName,
      page: () => const ForgotPasswordPage(),
    ),
  ];
}
