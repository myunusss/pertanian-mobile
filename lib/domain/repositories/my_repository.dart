import 'package:dartz/dartz.dart';
import 'package:pertanian/core/base/usecase/no_param.dart';
import 'package:pertanian/core/unions/failure.dart';
import 'package:pertanian/data/remote/response/laporan/villages_response.dart';
import 'package:pertanian/domain/entities/dashboard/comodities.dart';
import 'package:pertanian/domain/entities/laporan/laporan.dart';
import 'package:pertanian/domain/entities/laporan/villages.dart';
import 'package:pertanian/domain/entities/login/login.dart';
import 'package:pertanian/domain/entities/saran/post_saran.dart';
import 'package:pertanian/domain/entities/settings/user_profile.dart';
import 'package:pertanian/domain/usecases/do_login_usecase.dart';
import 'package:pertanian/domain/usecases/edit_account_usecase.dart';
import 'package:pertanian/domain/usecases/get_dashboard_usecase.dart';
import 'package:pertanian/domain/usecases/get_export_laporan_usecase.dart';
import 'package:pertanian/domain/usecases/get_laporan_usecase.dart';
import 'package:pertanian/domain/usecases/post_data_laporan_usecase.dart';
import 'package:pertanian/domain/usecases/post_saran_usecase.dart';

import '../entities/dashboard/dashboard.dart';
import '../entities/input_laporan/list_kecamatan.dart';
import '../entities/laporan/detail_laporan.dart';
import '../usecases/send_email_reset_password_usecase.dart';
import '../usecases/send_otp_reset_password_usecase copy.dart';
import '../usecases/send_otp_reset_password_usecase.dart';

abstract class MyRepository {
  Future<Either<Failure, Login>> doLogin(DoLoginUseCaseParams params);
  Future<Either<Failure, Comodities>> getComodities(String params);
  Future<Either<Failure, ListKecamatan>> getListKecamatan(NoParam params);
  Future<Either<Failure, Dashboard>> getDashboard(GetDashboardUseCaseParams params);
  Future<Either<Failure, UserProfile>> getUserProfile(NoParam params);
  Future<Either<Failure, UserProfile>> editAccount(EditAccountUseCaseParams params);
  Future<Either<Failure, dynamic>> doLogout(NoParam params);
  Future<Either<Failure, PostSaran>> postSaran(PostSaranUseCaseParams params);
  Future<Either<Failure, Laporan>> getLaporan(GetLaporanUseCaseParams params);
  Future<Either<Failure, Laporan>> getLaporanVerifikasi(NoParam params);
  Future<Either<Failure, DetailLaporan>> getDetailLaporan(String id);
  Future<Either<Failure, String>> deleteLaporan(String id);
  Future<Either<Failure, String>> postDataLaporan(PostDataLaporanUseCaseParams params);
  Future<Either<Failure, Villages>> getVillages(int params);
  Future<Either<Failure, String>> sendEmailResetPassword(SendEmailUseCaseParams params);
  Future<Either<Failure, String>> sendOTPResetPassword(SendOTPUseCaseParams params);
  Future<Either<Failure, String>> sendResetPassword(SendResetPasswordUseCaseParams params);
  Future<Either<Failure, String>> getExportLaporan(GetExportLaporanUseCaseParams params);
}
