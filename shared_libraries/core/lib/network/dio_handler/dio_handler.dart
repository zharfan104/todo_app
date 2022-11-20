import 'package:core/network/dio_handler/index.dart';
import 'package:dependencies/dio/dio.dart';

class DioHandler {
  DioHandler({required this.apiBaseUrl});

  final String apiBaseUrl;

  Dio get dio => _getDio();

  Dio _getDio() {
    final options = BaseOptions(
      baseUrl: apiBaseUrl,
      connectTimeout: 50000,
      receiveTimeout: 30000,
    );
    final dio = Dio(options);
    dio.interceptors.add(ApiInterceptors());

    return dio;
  }
}
