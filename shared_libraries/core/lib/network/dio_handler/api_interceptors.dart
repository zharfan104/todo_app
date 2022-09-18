import 'dart:convert';
import 'dart:developer';

import 'package:core/core.dart';
import 'package:dependencies/dependencies.dart';
import 'package:router/router.dart';

class ApiInterceptors extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final requestBody =
        const JsonEncoder.withIndent('  ').convert(options.data);
    final queryParameters =
        const JsonEncoder.withIndent('  ').convert(options.queryParameters);
    log(
      'Request URL : ${options.uri}\n'
      '----------------------------------------------------------------------\n'
      'Header: ${options.headers}\n'
      '----------------------------------------------------------------------\n'
      'Request Body: $requestBody\n'
      '----------------------------------------------------------------------\n'
      'Request Query Parameters: $queryParameters\n'
      '----------------------------------------------------------------------\n'
      'Method: ${options.method}\n',
    );
    options.headers = _defaultHeader();
    return handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    final prettyString =
        const JsonEncoder.withIndent('  ').convert(response.data);
    log(
      'Status Code: ${response.statusCode}\n'
      '——————————————————————————————————————————————————————————————————————\n'
      'Response : $prettyString\n',
    );
    return handler.next(response);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    log('Dio Error : $err');
    if (err.response?.statusCode == 401) {
      sl<AppRouter>().push(const LoginRoute());
    }
    return handler.next(err);
  }

  Map<String, dynamic> _defaultHeader() {
    AccountManagementService accountManagementService = sl();
    final token = accountManagementService.getToken();

    Map<String, String> headers = {};
    headers['Content-Type'] = 'application/json';
    headers['Authorization'] = 'Bearer $token';
    return headers;
  }
}
