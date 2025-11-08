import 'package:dio/dio.dart';

import '../config/dio_config.dart';
import '../interceptor/dio_log_interceptor.dart';
import '../logs/dio_pretty_logger.dart';

class UnAuthorizedDio {
  UnAuthorizedDio._();

  static UnAuthorizedDio? _instance;

  Dio? _dio;

  static UnAuthorizedDio get instance => _instance ??= UnAuthorizedDio._();

  Dio get dio => _setupDio();

  Dio _setupDio() {
    _dio ??= Dio(DioConfig.dioOptions);

    _dio!.interceptors.add(
      DioPrettyLogger.prettyLogger,
    ); // for only console log
    _dio!.interceptors.add(DioLogInterceptor());

    return _dio!;
  }
}
