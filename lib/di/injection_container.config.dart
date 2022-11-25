// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive/hive.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;

import '../data/local/hive/hive_manager.dart' as _i4;
import '../data/local/local_data_source.dart' as _i5;
import '../data/remote/api/api_service.dart' as _i7;
import '../data/remote/remote_data_source.dart' as _i8;
import '../data/repositories/my_repository_impl.dart' as _i9;
import '../domain/usecases/delete_laporan_usecase.dart' as _i16;
import '../domain/usecases/do_login_usecase.dart' as _i17;
import '../domain/usecases/do_logout_usecase.dart' as _i18;
import '../domain/usecases/edit_account_usecase.dart' as _i19;
import '../domain/usecases/get_comodities_usecase.dart' as _i21;
import '../domain/usecases/get_dashboard_usecase.dart' as _i22;
import '../domain/usecases/get_detail_laporan_usecase.dart' as _i23;
import '../domain/usecases/get_export_laporan_usecase.dart' as _i24;
import '../domain/usecases/get_laporan_usecase.dart' as _i25;
import '../domain/usecases/get_laporan_verifikasi_usecase.dart' as _i26;
import '../domain/usecases/get_list_kecamatan_usecase.dart' as _i27;
import '../domain/usecases/get_user_profile_usecase.dart' as _i28;
import '../domain/usecases/get_villages_usecase.dart' as _i29;
import '../domain/usecases/post_data_laporan_usecase.dart' as _i10;
import '../domain/usecases/post_saran_usecase.dart' as _i11;
import '../domain/usecases/send_email_reset_password_usecase.dart' as _i13;
import '../domain/usecases/send_otp_reset_password_usecase%20copy.dart' as _i15;
import '../domain/usecases/send_otp_reset_password_usecase.dart' as _i14;
import '../presentation/dashboard/cubit/dashboard_cubit.dart' as _i34;
import '../presentation/edit_account/cubit/edit_account_cubit.dart' as _i36;
import '../presentation/forgot_password/cubit/forgot_password_cubit.dart'
    as _i20;
import '../presentation/input_laporan/cubit/detail_laporan_cubit.dart' as _i35;
import '../presentation/laporan/cubit/laporan_cubit.dart' as _i30;
import '../presentation/login/cubit/login_cubit.dart' as _i31;
import '../presentation/saran/cubit/saran_cubit.dart' as _i12;
import '../presentation/settings/cubit/settings_cubit.dart' as _i32;
import '../presentation/verifikasi/cubit/verifikasi_cubit.dart' as _i33;
import 'register_module.dart' as _i37; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.Box<dynamic>>(() => registerModule.hiveBoxKoperasi());
  gh.lazySingleton<_i4.HiveManager>(
      () => _i4.HiveManager(get<_i3.Box<dynamic>>()));
  gh.lazySingleton<_i5.LocalDataSource>(
      () => _i5.LocalDataSource(get<_i4.HiveManager>()));
  gh.factory<String>(
    () => registerModule.baseUrl,
    instanceName: 'BaseUrl',
  );
  gh.lazySingleton<_i6.Dio>(() => registerModule.dio(
        get<String>(instanceName: 'BaseUrl'),
        get<_i5.LocalDataSource>(),
      ));
  gh.lazySingleton<_i7.ApiService>(() => _i7.ApiService(get<_i6.Dio>()));
  gh.lazySingleton<_i8.RemoteDataSource>(
      () => _i8.RemoteDataSource(get<_i7.ApiService>()));
  gh.lazySingleton<_i9.MyRepositoryImpl>(() => _i9.MyRepositoryImpl(
        get<_i8.RemoteDataSource>(),
        get<_i5.LocalDataSource>(),
      ));
  gh.lazySingleton<_i10.PostDataLaporanUseCase>(() =>
      _i10.PostDataLaporanUseCase(myRepository: get<_i9.MyRepositoryImpl>()));
  gh.lazySingleton<_i11.PostSaranUseCase>(
      () => _i11.PostSaranUseCase(myRepository: get<_i9.MyRepositoryImpl>()));
  gh.factory<_i12.SaranCubit>(
      () => _i12.SaranCubit(get<_i11.PostSaranUseCase>()));
  gh.lazySingleton<_i13.SendEmailResetPasswordUseCase>(() =>
      _i13.SendEmailResetPasswordUseCase(
          myRepository: get<_i9.MyRepositoryImpl>()));
  gh.lazySingleton<_i14.SendOTPResetPasswordUseCase>(() =>
      _i14.SendOTPResetPasswordUseCase(
          myRepository: get<_i9.MyRepositoryImpl>()));
  gh.lazySingleton<_i15.SendResetPasswordUseCase>(() =>
      _i15.SendResetPasswordUseCase(myRepository: get<_i9.MyRepositoryImpl>()));
  gh.lazySingleton<_i16.DeleteLaporanUseCase>(() =>
      _i16.DeleteLaporanUseCase(myRepository: get<_i9.MyRepositoryImpl>()));
  gh.lazySingleton<_i17.DoLoginUseCase>(
      () => _i17.DoLoginUseCase(myRepository: get<_i9.MyRepositoryImpl>()));
  gh.lazySingleton<_i18.DoLogoutUseCase>(
      () => _i18.DoLogoutUseCase(myRepository: get<_i9.MyRepositoryImpl>()));
  gh.lazySingleton<_i19.EditAccountUseCase>(
      () => _i19.EditAccountUseCase(myRepository: get<_i9.MyRepositoryImpl>()));
  gh.factory<_i20.ForgotPasswordCubit>(() => _i20.ForgotPasswordCubit(
        get<_i13.SendEmailResetPasswordUseCase>(),
        get<_i14.SendOTPResetPasswordUseCase>(),
        get<_i15.SendResetPasswordUseCase>(),
      ));
  gh.lazySingleton<_i21.GetComoditiesUseCase>(() =>
      _i21.GetComoditiesUseCase(myRepository: get<_i9.MyRepositoryImpl>()));
  gh.lazySingleton<_i22.GetDashboardUseCase>(() =>
      _i22.GetDashboardUseCase(myRepository: get<_i9.MyRepositoryImpl>()));
  gh.lazySingleton<_i23.GetDetailLaporanUseCase>(() =>
      _i23.GetDetailLaporanUseCase(myRepository: get<_i9.MyRepositoryImpl>()));
  gh.lazySingleton<_i24.GetExportLaporanUseCase>(() =>
      _i24.GetExportLaporanUseCase(myRepository: get<_i9.MyRepositoryImpl>()));
  gh.lazySingleton<_i25.GetLaporanUseCase>(
      () => _i25.GetLaporanUseCase(myRepository: get<_i9.MyRepositoryImpl>()));
  gh.lazySingleton<_i26.GetLaporanVerifikasiUseCase>(() =>
      _i26.GetLaporanVerifikasiUseCase(
          myRepository: get<_i9.MyRepositoryImpl>()));
  gh.lazySingleton<_i27.GetListKecamatanUseCase>(() =>
      _i27.GetListKecamatanUseCase(myRepository: get<_i9.MyRepositoryImpl>()));
  gh.lazySingleton<_i28.GetUserProfileUseCase>(() =>
      _i28.GetUserProfileUseCase(myRepository: get<_i9.MyRepositoryImpl>()));
  gh.lazySingleton<_i29.GetVillagesUseCase>(
      () => _i29.GetVillagesUseCase(myRepository: get<_i9.MyRepositoryImpl>()));
  gh.factory<_i30.LaporanCubit>(() => _i30.LaporanCubit(
        get<_i25.GetLaporanUseCase>(),
        get<_i24.GetExportLaporanUseCase>(),
      ));
  gh.factory<_i31.LoginCubit>(
      () => _i31.LoginCubit(get<_i17.DoLoginUseCase>()));
  gh.factory<_i32.SettingsCubit>(() => _i32.SettingsCubit(
        get<_i28.GetUserProfileUseCase>(),
        get<_i18.DoLogoutUseCase>(),
      ));
  gh.factory<_i33.VerifikasiCubit>(() => _i33.VerifikasiCubit(
        get<_i26.GetLaporanVerifikasiUseCase>(),
        get<_i16.DeleteLaporanUseCase>(),
      ));
  gh.factory<_i34.DashboardCubit>(() => _i34.DashboardCubit(
        get<_i21.GetComoditiesUseCase>(),
        get<_i22.GetDashboardUseCase>(),
      ));
  gh.factory<_i35.DetailLaporanCubit>(() => _i35.DetailLaporanCubit(
        get<_i23.GetDetailLaporanUseCase>(),
        get<_i10.PostDataLaporanUseCase>(),
        get<_i29.GetVillagesUseCase>(),
        get<_i27.GetListKecamatanUseCase>(),
        get<_i21.GetComoditiesUseCase>(),
      ));
  gh.factory<_i36.EditAccountCubit>(
      () => _i36.EditAccountCubit(get<_i19.EditAccountUseCase>()));
  return get;
}

class _$RegisterModule extends _i37.RegisterModule {}
