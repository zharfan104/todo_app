import 'package:dependencies/dio/dio.dart';

import 'index.dart';

class DioHandler {
  final String apiBaseUrl;

  DioHandler({required this.apiBaseUrl});

  Dio get dio => _getDio();

  Dio _getDio() {
    BaseOptions options = BaseOptions(
      baseUrl: apiBaseUrl,
      connectTimeout: 50000,
      receiveTimeout: 30000,
    );
    options.headers = _defaultHeader();
    final dio = Dio(options);
    dio.interceptors.add(ApiInterceptors());

    return dio;
  }

  Map<String, dynamic> _defaultHeader() {
    Map<String, String> headers = {};
    headers['Content-Type'] = 'application/json';
    headers['Authorization'] =
        'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJfaWQiOiI2MmZjYjM4YWU1MDgwYzAwMTcyMDQ3YTgiLCJpYXQiOjE2NjA3MjgyMDN9.-vrQfE80GNVXCZYT_jha3i2atVM05AayXobTr1u9FCo';
    return headers;
  }
}
