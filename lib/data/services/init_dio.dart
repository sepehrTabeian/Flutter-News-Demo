import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:sample/data/services/service_locatior.dart';
import 'package:sample/utility/values.dart';

void initDio()  {
  var dio = locator<Dio>();
  dio.options.baseUrl = baseUrl;
  dio.interceptors.add(PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: false,
      error: true,
      compact: true,
      maxWidth: 90,
      request: true));
// Set default configs
  dio.options.connectTimeout = 10000; //10s
  dio.options.receiveTimeout = 10000;

}
