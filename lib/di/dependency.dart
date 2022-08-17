import 'package:dependencies/dependencies.dart';
import 'package:todo_app/router/router.dart';

class RegisterMainAppModule {
  RegisterMainAppModule() {
    _registerAppRouter();
  }

  void _registerAppRouter() {
    sl.registerLazySingleton<AppRouter>(AppRouter.new);
  }
}
