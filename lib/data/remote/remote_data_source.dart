import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pertanian/core/base/usecase/no_param.dart';
import 'package:pertanian/data/remote/response/dashboard/comodities_response.dart';
import 'package:pertanian/data/remote/response/input_laporan/list_kecamatan_response.dart';
import 'package:pertanian/data/remote/response/laporan/detail_laporan_response.dart';
import 'package:pertanian/data/remote/response/laporan/villages_response.dart';
import 'package:pertanian/data/remote/response/login/login_response.dart';
import 'package:pertanian/domain/usecases/edit_account_usecase.dart';
import 'package:pertanian/domain/usecases/get_export_laporan_usecase.dart';
import 'package:pertanian/domain/usecases/get_laporan_usecase.dart';
import 'package:pertanian/domain/usecases/post_data_laporan_usecase.dart';
import 'package:pertanian/domain/usecases/post_saran_usecase.dart';

import '../../domain/usecases/do_login_usecase.dart';
import '../../domain/usecases/get_dashboard_usecase.dart';
import '../../domain/usecases/send_email_reset_password_usecase.dart';
import '../../domain/usecases/send_otp_reset_password_usecase copy.dart';
import '../../domain/usecases/send_otp_reset_password_usecase.dart';
import 'api/api_service.dart';
import 'response/base_response.dart';
import 'response/dashboard/dashboard_response.dart';
import 'response/input_laporan/post_data_laporan_response.dart';
import 'response/laporan/delete_laporan_response.dart';
import 'response/laporan/laporan_response.dart';
import 'response/saran/post_saran_response.dart';
import 'response/settings/user_profile_response.dart';

@lazySingleton
class RemoteDataSource {
  final ApiService _apiService;

  RemoteDataSource(this._apiService);

  Future<LoginResponse> doLogin(DoLoginUseCaseParams params) async {
    try {
      final response = await _apiService.doLogin(params);
      return LoginResponse.fromJson(response.data);
    } on DioError catch (e) {
      final res = e.response;
      return Future.value(LoginResponse(
        message: res?.data['message'],
        statusCode: e.response?.statusCode,
        data: null,
      ));
    }
  }

  Future<ComoditiesResponse> getComodities(String params) async {
    try {
      final response = await _apiService.getComodities(params);
      return ComoditiesResponse.fromJson(response.data);
    } on DioError catch (e) {
      final res = e.response;
      return Future.value(ComoditiesResponse(
        message: res?.data['message'],
        statusCode: e.response?.statusCode,
        data: null,
      ));
    }
  }

  Future<DashboardResponse> getDashboard(GetDashboardUseCaseParams params) async {
    try {
      final response = await _apiService.getDashboard(params);
      return DashboardResponse.fromJson(response.data);
    } on DioError catch (e) {
      final res = e.response;
      return Future.value(DashboardResponse(
        message: res?.data['message'],
        statusCode: e.response?.statusCode,
        data: null,
      ));
    }
  }

  Future<UserProfileResponse> getUserProfile(NoParam params) async {
    try {
      final response = await _apiService.getUserProfile(params);
      return UserProfileResponse.fromJson(response.data);
    } on DioError catch (e) {
      final res = e.response;
      return Future.value(UserProfileResponse(
        message: res?.data['message'],
        statusCode: res?.statusCode,
        data: null,
      ));
    }
  }

  Future<UserProfileResponse> editAccount(EditAccountUseCaseParams params) async {
    try {
      final response = await _apiService.editAccount(params);
      return UserProfileResponse.fromJson(response.data);
    } on DioError catch (e) {
      final res = e.response;
      return Future.value(UserProfileResponse(
        message: res?.data['message'],
        statusCode: e.response?.statusCode,
        data: null,
      ));
    }
  }

  Future<PostSaranResponse> postSaran(PostSaranUseCaseParams params) async {
    try {
      final response = await _apiService.postSaran(params);
      return PostSaranResponse.fromJson(response.data);
    } on DioError catch (e) {
      final res = e.response;
      return Future.value(PostSaranResponse(
        message: res?.data['message'],
        statusCode: e.response?.statusCode,
      ));
    }
  }

  Future<LaporanResponse> getLaporan(GetLaporanUseCaseParams params) async {
    try {
      final response = await _apiService.getLaporan(params);
      return LaporanResponse.fromJson(response.data);
    } on DioError catch (e) {
      final res = e.response;
      return Future.value(LaporanResponse(
        message: res?.data['message'],
        statusCode: e.response?.statusCode,
      ));
    }
  }

  Future<LaporanResponse> getLaporanVerifikasi(NoParam params) async {
    try {
      final response = await _apiService.getLaporanVerifikasi(params);
      return LaporanResponse.fromJson(response.data);
    } on DioError catch (e) {
      final res = e.response;
      return Future.value(LaporanResponse(
        message: res?.data['message'],
        statusCode: e.response?.statusCode,
      ));
    }
  }

  Future<DetailLaporanResponse> getDetailLaporan(String id) async {
    try {
      final response = await _apiService.getDetailLaporan(id);
      return DetailLaporanResponse.fromJson(response.data);
    } on DioError catch (e) {
      final res = e.response;
      return Future.value(DetailLaporanResponse(
        message: res?.data['message'],
        statusCode: e.response?.statusCode,
      ));
    }
  }

  Future<DeleteLaporanResponse> deleteLaporan(String id) async {
    try {
      final response = await _apiService.deleteLaporan(id);
      return DeleteLaporanResponse.fromJson(response.data);
    } on DioError catch (e) {
      final res = e.response;
      return Future.value(DeleteLaporanResponse(
        message: res?.data['message'],
        statusCode: e.response?.statusCode,
      ));
    }
  }

  Future<PostDataLaporanResponse> postDataLaporan(PostDataLaporanUseCaseParams params) async {
    try {
      final response = await _apiService.postDatLaporan(params);
      return PostDataLaporanResponse.fromJson(response.data);
    } on DioError catch (e) {
      final res = e.response;
      return Future.value(PostDataLaporanResponse(
        message: res?.data['message'],
        statusCode: e.response?.statusCode,
      ));
    }
  }

  Future<VillagesResponse> getVillages(int? params) async {
    try {
      final response = await _apiService.getVillages(params);
      return VillagesResponse.fromJson(response.data);
    } on DioError catch (e) {
      final res = e.response;
      return Future.value(VillagesResponse(
        message: res?.data['message'],
        statusCode: e.response?.statusCode,
      ));
    }
  }

  Future<ListKecamatanResponse> getListKecamatan() async {
    try {
      final response = await _apiService.getListKecamatan();
      return ListKecamatanResponse.fromJson(response.data);
    } on DioError catch (e) {
      final res = e.response;
      return Future.value(ListKecamatanResponse(
        message: res?.data['message'],
        statusCode: e.response?.statusCode,
      ));
    }
  }

  Future<BaseResponse> sendEmailResetPassword(SendEmailUseCaseParams params) async {
    final response = await _apiService.sendEmailResetPassword(params);
    return BaseResponse.fromJson(response.data);
  }

  Future<BaseResponse> sendOTPResetPassword(SendOTPUseCaseParams params) async {
    try {
      final response = await _apiService.sendOTPResetPassword(params);
      return BaseResponse.fromJson(response.data);
    } on DioError catch (e) {
      final res = e.response;

      return Future.value(BaseResponse(
        message: res?.data['message'],
        statusCode: e.response?.statusCode,
      ));
    }
  }

  Future<BaseResponse> sendResetPassword(SendResetPasswordUseCaseParams params) async {
    try {
      final response = await _apiService.sendResetPassword(params);
      return BaseResponse.fromJson(response.data);
    } on DioError catch (e) {
      final res = e.response;

      return Future.value(BaseResponse(
        message: res?.data['message'],
        statusCode: e.response?.statusCode,
      ));
    }
  }

  Future<BaseResponse> getExportLaporan(GetExportLaporanUseCaseParams params) async {
    try {
      final response = await _apiService.getExportLaporan(params);
      return BaseResponse(
        message: 'Repsonse: $response',
        statusCode: 200,
      );
    } on DioError catch (e) {
      final res = e.response;

      return Future.value(BaseResponse(
        message: res?.data['message'],
        statusCode: e.response?.statusCode,
      ));
    }
  }
}
