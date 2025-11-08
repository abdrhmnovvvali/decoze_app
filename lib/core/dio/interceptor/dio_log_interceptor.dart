import 'dart:developer';

import 'package:dio/dio.dart';

class DioLogInterceptor implements Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    log('Base url : ${options.baseUrl}${options.path}');
    log('Headers : ${options.headers}');
    log('Request body : ${options.data}');

    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    log('Status code : ${response.statusCode}');
    log('Response body  : ${response.data}');
    log('Status message : ${response.statusMessage}');

    handler.resolve(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    log('Status code : ${err.response!.statusCode}');
    log('Error message : ${err.message}');

    handler.reject(err);
  }
}
