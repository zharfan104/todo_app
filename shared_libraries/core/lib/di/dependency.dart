import 'package:core/core.dart';
import 'package:dependencies/dependencies.dart';
import 'package:resources/resources.dart';

class RegisterCoreModule {
  RegisterCoreModule() {
    _registerCore();
  }

  void _registerCore() {
    sl
      ..registerLazySingleton<DioHandler>(
        () => DioHandler(
          apiBaseUrl: ApiConstant.apiUrl,
        ),
      )
      ..registerLazySingleton<Dio>(() => sl<DioHandler>().dio)
      ..registerLazySingleton<RestClient>(
        () => RestClient(sl<DioHandler>().dio),
      )
      ..registerLazySingleton<AccountManagementService>(
        AccountManagementServiceImpl.new,
      );
  }
}
