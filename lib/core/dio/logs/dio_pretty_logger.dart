import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioPrettyLogger {
  DioPrettyLogger._();

  static final prettyLogger = PrettyDioLogger(
    requestHeader: true,
    responseHeader: true,
    error: true,
    compact: true,
  );
}
