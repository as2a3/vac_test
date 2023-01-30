import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_pretty_dio_logger/flutter_pretty_dio_logger.dart';

class DioClient {
  late final Dio _dio;

  Dio get getDio => _dio;

  DioClient() {
    _dio = Dio();
    _dio..options.baseUrl = ''
      // ..options.connectTimeout = Endpoints.connectionTimeout
      // ..options.receiveTimeout = Endpoints.receiveTimeout
      ..options.responseType = ResponseType.json;

    if (kDebugMode) {
      _dio.interceptors.add(
        PrettyDioLogger(
          requestHeader: true,
          queryParameters: true,
          requestBody: true,
          responseHeader: true,
          showProcessingTime: false,
          canShowLog: true,
        ),
      );
    }
  }
}
