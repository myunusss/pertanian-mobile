import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:pertanian/core/base/usecase/no_param.dart';
import 'package:pertanian/core/const/strings.dart';
import 'package:pertanian/data/local/local_data_source.dart';
import 'package:pertanian/data/remote/remote_data_source.dart';
import 'package:pertanian/data/remote/response/base_response.dart';
import 'package:pertanian/domain/entities/dashboard/comodities.dart';
import 'package:pertanian/domain/entities/input_laporan/list_kecamatan.dart';
import 'package:pertanian/domain/entities/saran/post_saran.dart';
import 'package:pertanian/domain/entities/settings/user_profile.dart';
import 'package:pertanian/domain/usecases/edit_account_usecase.dart';
import 'package:pertanian/domain/usecases/get_laporan_usecase.dart';
import 'package:pertanian/domain/usecases/post_data_laporan_usecase.dart';
import 'package:pertanian/domain/usecases/post_saran_usecase.dart';

import '../../core/unions/failure.dart';
import '../../domain/entities/dashboard/dashboard.dart';
import '../../domain/entities/laporan/detail_laporan.dart';
import '../../domain/entities/laporan/laporan.dart';
import '../../domain/entities/laporan/villages.dart';
import '../../domain/entities/login/login.dart';
import '../../domain/repositories/my_repository.dart';
import '../../domain/usecases/get_export_laporan_usecase.dart';
import '../../domain/usecases/send_email_reset_password_usecase.dart';
import '../../domain/usecases/send_otp_reset_password_usecase copy.dart';
import '../../domain/usecases/send_otp_reset_password_usecase.dart';

@LazySingleton()
class MyRepositoryImpl implements MyRepository {
  final RemoteDataSource _remoteDataSource;
  final LocalDataSource _localDataSource;

  MyRepositoryImpl(
    this._remoteDataSource,
    this._localDataSource,
  );

  @override
  Future<Either<Failure, Login>> doLogin(params) async {
    final response = await _remoteDataSource.doLogin(params);
    final isRememberMe = params.rememberMe;

    if (response.data == null || response.accessToken == null || response.tokenType == '') {
      return Left(
        Failure.defaultError(response.message ?? Strings.msgErrorGeneral),
      );
    }

    // Save to local storage
    await Future.wait([
      _localDataSource.saveToken(response.accessToken),
      isRememberMe ? _localDataSource.saveEmail(params.email) : _localDataSource.deleteEmail(),
      isRememberMe ? _localDataSource.savePassword(params.password) : _localDataSource.deletePassword(),
      isRememberMe ? _localDataSource.saveRememberMe(isRememberMe) : _localDataSource.deleteRememberMe(),
    ]);

    return Right(response.toDomain());
  }

  @override
  Future<Either<Failure, Comodities>> getComodities(params) async {
    final response = await _remoteDataSource.getComodities(params);

    if (response.data == null) {
      return Left(
        Failure.defaultError(response.message ?? Strings.msgErrorGeneral),
      );
    }

    return Right(response.toDomain());
  }

  @override
  Future<Either<Failure, Dashboard>> getDashboard(params) async {
    final response = await _remoteDataSource.getDashboard(params);

    if (response.data == null) {
      return Left(
        Failure.defaultError(response.message ?? Strings.msgErrorGeneral),
      );
    }

    return Right(response.toDomain());
  }

  @override
  Future<Either<Failure, UserProfile>> getUserProfile(params) async {
    final response = await _remoteDataSource.getUserProfile(params);

    if (response.data == null) {
      return Left(
        Failure.defaultError(response.message ?? Strings.msgErrorGeneral),
      );
    }

    return Right(response.toDomain());
  }

  @override
  Future<Either<Failure, UserProfile>> editAccount(EditAccountUseCaseParams params) async {
    final response = await _remoteDataSource.editAccount(params);

    if (response.data == null) {
      return Left(
        Failure.defaultError(response.message ?? Strings.msgErrorGeneral),
      );
    }

    return Right(response.toDomain());
  }

  @override
  Future<Either<Failure, dynamic>> doLogout(NoParam params) async {
    final isRememberMe = _localDataSource.getRememberMe();

    if (isRememberMe == true) {
      await Future.wait(
        [
          _localDataSource.deleteToken(),
        ],
      );
    } else {
      await Future.wait([
        _localDataSource.deleteToken(),
        _localDataSource.deleteEmail(),
        _localDataSource.deletePassword(),
      ]);
    }

    return const Right(null);
  }

  @override
  Future<Either<Failure, PostSaran>> postSaran(PostSaranUseCaseParams params) async {
    final response = await _remoteDataSource.postSaran(params);

    if (response.statusCode == null) {
      return Left(
        Failure.defaultError(response.message ?? Strings.msgErrorGeneral),
      );
    }

    return Right(response.toDomain());
  }

  @override
  Future<Either<Failure, Laporan>> getLaporan(GetLaporanUseCaseParams params) async {
    final response = await _remoteDataSource.getLaporan(params);

    if (response.statusCode == null) {
      return Left(
        Failure.defaultError(response.message ?? Strings.msgErrorGeneral),
      );
    }

    return Right(response.toDomain());
  }

  @override
  Future<Either<Failure, Laporan>> getLaporanVerifikasi(NoParam params) async {
    final response = await _remoteDataSource.getLaporanVerifikasi(params);

    if (response.statusCode == null) {
      return Left(
        Failure.defaultError(response.message ?? Strings.msgErrorGeneral),
      );
    }

    return Right(response.toDomain());
  }

  @override
  Future<Either<Failure, DetailLaporan>> getDetailLaporan(String id) async {
    final response = await _remoteDataSource.getDetailLaporan(id);

    if (response.statusCode == null) {
      return Left(
        Failure.defaultError(response.message ?? Strings.msgErrorGeneral),
      );
    }

    return Right(response.toDomain());
  }

  @override
  Future<Either<Failure, String>> deleteLaporan(String id) async {
    final response = await _remoteDataSource.deleteLaporan(id);

    if (response.statusCode == null) {
      return Left(
        Failure.defaultError(response.message ?? Strings.msgErrorGeneral),
      );
    }

    return Right(response.toDomain().message ?? 'Berhasil hapus laporan');
  }

  @override
  Future<Either<Failure, String>> postDataLaporan(PostDataLaporanUseCaseParams params) async {
    final response = await _remoteDataSource.postDataLaporan(params);

    if (response.statusCode == null) {
      return Left(
        Failure.defaultError(response.message ?? Strings.msgErrorGeneral),
      );
    }

    return Right(response.toDomain().message ?? 'Berhasil input data baru');
  }

  @override
  Future<Either<Failure, Villages>> getVillages(int? params) async {
    final response = await _remoteDataSource.getVillages(params);

    if (response.statusCode == null) {
      return Left(
        Failure.defaultError(response.message ?? Strings.msgErrorGeneral),
      );
    }

    return Right(response.toDomain());
  }

  @override
  Future<Either<Failure, ListKecamatan>> getListKecamatan(NoParam params) async {
    final response = await _remoteDataSource.getListKecamatan();

    if (response.statusCode == null) {
      return Left(
        Failure.defaultError(response.message ?? Strings.msgErrorGeneral),
      );
    }

    return Right(response.toDomain());
  }

  @override
  Future<Either<Failure, String>> sendEmailResetPassword(SendEmailUseCaseParams params) async {
    final data = await _remoteDataSource.sendEmailResetPassword(params);

    if (!data.statusCode.toString().contains('20')) {
      return Left(
        Failure.defaultError(data.message ?? Strings.msgErrorGeneral),
      );
    }

    return Right(data.message ?? 'Silahkan cek email anda!');
  }

  @override
  Future<Either<Failure, String>> sendOTPResetPassword(SendOTPUseCaseParams params) async {
    final data = await _remoteDataSource.sendOTPResetPassword(params);

    if (!data.statusCode.toString().contains('20')) {
      return Left(
        Failure.defaultError(data.message ?? Strings.msgErrorGeneral),
      );
    }

    return Right(data.message ?? 'OTP dapat digunakan');
  }

  @override
  Future<Either<Failure, String>> sendResetPassword(SendResetPasswordUseCaseParams params) async {
    final data = await _remoteDataSource.sendResetPassword(params);

    if (!data.statusCode.toString().contains('20')) {
      return Left(
        Failure.defaultError(data.message ?? Strings.msgErrorGeneral),
      );
    }

    return Right(data.message ?? 'Password berhasil diupdate');
  }

  @override
  Future<Either<Failure, String>> getExportLaporan(GetExportLaporanUseCaseParams params) async {
    final data = await _remoteDataSource.getExportLaporan(params);

    if (!data.statusCode.toString().contains('20')) {
      return Left(
        Failure.defaultError(data.message ?? Strings.msgErrorGeneral),
      );
    }

    return Right(data.message ?? 'Password berhasil diupdate');
  }
}
