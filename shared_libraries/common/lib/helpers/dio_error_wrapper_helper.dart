import 'package:dependencies/dependencies.dart';

class DioErrorWrapperHelper {
  static Future<void> wrap({
    required Future<void> Function() callback,
    required void Function(String errorMessage) errorCallback,
  }) async {
    try {
      await callback();
    } on DioError catch (error) {
      errorCallback(error.message);
    } catch (error) {
      errorCallback('$error');
    }
  }
}
