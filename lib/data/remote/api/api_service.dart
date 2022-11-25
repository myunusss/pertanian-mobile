import 'dart:io';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pertanian/core/base/usecase/no_param.dart';
import 'package:pertanian/domain/usecases/do_login_usecase.dart';
import 'package:pertanian/domain/usecases/edit_account_usecase.dart';
import 'package:pertanian/domain/usecases/get_export_laporan_usecase.dart';
import 'package:pertanian/domain/usecases/get_laporan_usecase.dart';
import 'package:pertanian/domain/usecases/post_data_laporan_usecase.dart';
import 'package:pertanian/domain/usecases/post_saran_usecase.dart';
import 'package:path_provider/path_provider.dart';

import '../../../core/const/constants.dart';
import '../../../domain/usecases/get_dashboard_usecase.dart';
import '../../../domain/usecases/send_email_reset_password_usecase.dart';
import '../../../domain/usecases/send_otp_reset_password_usecase copy.dart';
import '../../../domain/usecases/send_otp_reset_password_usecase.dart';
import 'endpoint.dart';

@lazySingleton
class ApiService {
  final Dio _dio;

  ApiService(this._dio);

  Future<Response> doLogin(DoLoginUseCaseParams params) async {
    return await _dio.post(
      Endpoint.login,
      data: {
        'email': params.email,
        'password': params.password,
      },
    );
  }

  Future<Response> getComodities(String params) async {
    return await _dio.get(
      Endpoint.getComodities,
      queryParameters: {
        'type': params,
      },
    );
  }

  Future<Response> getDashboard(GetDashboardUseCaseParams params) async {
    return await _dio.get(
      Endpoint.getDashboard,
      queryParameters: {
        'wilayah': params.region,
        'komoditasId': params.comodityId,
        'year': params.year,
        'type': params.type,
        'category': params.category,
      },
    );
  }

  Future<Response> getUserProfile(NoParam params) async {
    return await _dio.post(Endpoint.getUserProfile);
  }

  Future<Response> editAccount(EditAccountUseCaseParams params) async {
    Map<String, dynamic> dataMap = {
      'name': params.name,
      'email': params.email,
    };

    if (params.password != Constants.placeholderPassword && params.password.isNotEmpty) {
      dataMap['password'] = params.password;
    }

    return await _dio.post(
      Endpoint.editAccount,
      data: FormData.fromMap(dataMap),
    );
  }

  Future<Response> postSaran(PostSaranUseCaseParams params) async {
    return await _dio.post(
      Endpoint.postSaran,
      data: {
        'user_name': params.name,
        'saran': params.saran,
      },
    );
  }

  Future<Response> getLaporan(GetLaporanUseCaseParams params) async {
    return await _dio.get(
      Endpoint.getLaporan,
      queryParameters: {
        'year': params.year,
        'search': params.query,
      },
    );
  }

  Future<Response> getLaporanVerifikasi(NoParam params) async {
    return await _dio.get(
      Endpoint.getLaporanVerifikasi,
    );
  }

  Future<Response> getDetailLaporan(String id) async {
    return await _dio.get(
      "${Endpoint.getLaporan}/$id",
    );
  }

  Future<Response> deleteLaporan(String id) async {
    return await _dio.delete(
      "${Endpoint.getLaporan}/$id",
    );
  }

  Future<Response> postDatLaporan(PostDataLaporanUseCaseParams params) async {
    return await _dio.post(
      Endpoint.postDataLaporan,
      data: {
        'desa': params.desa,
        'komoditas': params.comodity,
        'luas_tanam': params.luasTanam,
        'tanam_hasil': params.tanHasil,
        'produksi': params.produksi,
        'provitas': params.provitas,
        'harga_produsen': params.hargaProdusen,
        'harga_grosir': params.hargaGrosir,
        'harga_eceran': params.hargaEceran,
      },
    );
  }

  Future<Response> getVillages(int? idKecamatan) async {
    Map<String, dynamic> params = {
      'id_kecamatan': idKecamatan.toString(),
    };
    return await _dio.get(
      Endpoint.getVillages,
      queryParameters: idKecamatan != null ? params : null,
    );
  }

  Future<Response> getListKecamatan() async {
    return await _dio.get(
      Endpoint.getListKecamatan,
    );
  }

  Future<Response> sendEmailResetPassword(SendEmailUseCaseParams params) async {
    Map<String, dynamic> dataMap = {
      'email': params.email,
    };

    return await _dio.post(
      Endpoint.sendEmailResetPassword,
      data: FormData.fromMap(dataMap),
    );
  }

  Future<Response> sendOTPResetPassword(SendOTPUseCaseParams params) async {
    Map<String, dynamic> dataMap = {
      'otp': params.otp,
    };

    return await _dio.post(
      Endpoint.sendOTPResetPassword,
      data: FormData.fromMap(dataMap),
    );
  }

  Future<Response> sendResetPassword(SendResetPasswordUseCaseParams params) async {
    Map<String, dynamic> dataMap = {
      'otp': params.otp,
      'password': params.password,
    };

    return await _dio.post(
      Endpoint.sendResetPassword,
      data: FormData.fromMap(dataMap),
    );
  }

  Future<bool> getExportLaporan(GetExportLaporanUseCaseParams params) async {
    var tempDir = await getTemporaryDirectory();
    String fullPath = tempDir.path + "/boo2.xlsx'";
    print('full path ${fullPath}');

    Response response = await _dio.get(
      Endpoint.exportLaporan,
      queryParameters: {
        'select_year': params.year,
        'type': params.type,
      },
      onReceiveProgress: ((count, total) {
        if (total != -1) {
          print((count / total * 100).toStringAsFixed(0) + "%");
        }
      }),
      options: Options(
        responseType: ResponseType.bytes,
        followRedirects: false,
        validateStatus: (status) {
          if (status != null) {
            return status < 500;
          } else {
            return false;
          }
        },
      ),
    );

    File file = File(fullPath);
    var raf = file.openSync(mode: FileMode.write);
    // response.data is List<int> type
    raf.writeFromSync(response.data);
    await raf.close();

    return true;
  }
}
