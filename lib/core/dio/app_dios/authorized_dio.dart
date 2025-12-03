import 'package:dio/dio.dart';

import '../../extensions/response_status_code.dart';
import '../config/dio_config.dart';
import '../interceptor/dio_log_interceptor.dart';
import '../logs/dio_pretty_logger.dart';

class AuthorizedDio {
  AuthorizedDio._();

  static AuthorizedDio? _instance;

  Dio? _dio;

  static AuthorizedDio get instance => _instance ??= AuthorizedDio._();

  Dio get dio => _setupDio();

  Dio _setupDio() {
    _dio ??= Dio(
      DioConfig.dioOptions.copyWith(
        validateStatus: (status) => status!.isSuccess || status.isNotFound,
      ),
    );

    _dio!.interceptors.add(DioPrettyLogger.prettyLogger);
    // Add the Interceptor for Token
    _dio!.interceptors.add(DioLogInterceptor());

    return _dio!;
  }
}
