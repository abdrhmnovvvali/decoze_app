import 'package:decoze_app/core/constants/api_keys.dart';
import 'package:decoze_app/core/constants/app_durations.dart';
import 'package:decoze_app/core/extensions/response_status_code.dart';
import 'package:dio/dio.dart';

class DioConfig {
  DioConfig._();

  static final dioOptions = BaseOptions(
    connectTimeout: AppDurations.s30,
    receiveTimeout: AppDurations.s30,
    baseUrl: ApiKeys.baseUrl,
    validateStatus: (status) => status!.isSuccess,
  );
}
