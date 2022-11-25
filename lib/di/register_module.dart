import 'package:dio/dio.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:pertanian/data/local/local_data_source.dart';
import 'package:pertanian/data/remote/api/endpoint.dart';

import '../core/const/constants.dart';
import '../data/local/hive/hive_key.dart';

@module
abstract class RegisterModule {
  // You can register named preemptive types like follows
  @Named('BaseUrl')
  String get baseUrl => Endpoint.baseUrlApi;

  // url here will be injected
  @lazySingleton
  Dio dio(@Named('BaseUrl') String url, LocalDataSource localDataSource) => Dio(
        BaseOptions(
          baseUrl: url,
          connectTimeout: Constants.timeoutInMillisecond,
          receiveTimeout: Constants.timeoutInMillisecond,
          sendTimeout: Constants.timeoutInMillisecond,
        ),
      )
        ..interceptors.add(
          InterceptorsWrapper(
            onRequest: (options, handler) {
              final token = localDataSource.getToken();
              if (token != null) {
                options.headers['Authorization'] = 'Bearer $token';
              }
              handler.next(options);
            },
          ),
        )
        ..interceptors.add(
          LogInterceptor(responseBody: true, requestBody: true),
        );

  @lazySingleton
  Box<dynamic> hiveBoxKoperasi() => Hive.box(HiveKey.boxKoperasi);
}
