import 'package:dependencies/dependencies.dart';
import 'package:resources/resources.dart';

import '../core.dart';

class RegisterCoreModule {
  RegisterCoreModule() {
    _registerCore();
  }

  void _registerCore() {
    sl.registerLazySingleton<DioHandler>(() => DioHandler(
          apiBaseUrl: ApiConstant.apiUrl,
        ));
    sl.registerLazySingleton<Dio>(() => sl<DioHandler>().dio);
    sl.registerLazySingleton<RestClient>(
      () => RestClient(sl<DioHandler>().dio),
    );
  }
}
