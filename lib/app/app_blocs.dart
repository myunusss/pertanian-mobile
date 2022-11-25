import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pertanian/di/injection_container.dart';
import 'package:pertanian/presentation/dashboard/cubit/dashboard_cubit.dart';
import 'package:pertanian/presentation/edit_account/cubit/edit_account_cubit.dart';
import 'package:pertanian/presentation/forgot_password/cubit/forgot_password_cubit.dart';
import 'package:pertanian/presentation/input_laporan/cubit/detail_laporan_cubit.dart';
import 'package:pertanian/presentation/laporan/cubit/laporan_cubit.dart';
import 'package:pertanian/presentation/login/cubit/login_cubit.dart';
import 'package:pertanian/presentation/saran/cubit/saran_cubit.dart';
import 'package:pertanian/presentation/settings/cubit/settings_cubit.dart';
import 'package:pertanian/presentation/verifikasi/cubit/verifikasi_cubit.dart';

class AppBlocs {
  const AppBlocs._();

  static final List<BlocProvider> items = [
    BlocProvider<LoginCubit>(
      create: (context) => getIt.get(),
    ),
    BlocProvider<DashboardCubit>(
      create: (context) => getIt.get(),
    ),
    BlocProvider<SettingsCubit>(
      create: (context) => getIt.get(),
    ),
    BlocProvider<EditAccountCubit>(
      create: (context) => getIt.get(),
    ),
    BlocProvider<SaranCubit>(
      create: (context) => getIt.get(),
    ),
    BlocProvider<LaporanCubit>(
      create: (context) => getIt.get(),
    ),
    BlocProvider<VerifikasiCubit>(
      create: (context) => getIt.get(),
    ),
    BlocProvider<DetailLaporanCubit>(
      create: (context) => getIt.get(),
    ),
    BlocProvider<ForgotPasswordCubit>(
      create: (context) => getIt.get(),
    ),
  ];
}
