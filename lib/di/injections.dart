import 'package:core/core.dart';
import 'package:todo_app/di/index.dart';

class Injections {
  static void init() {
    RegisterCoreModule();

    RegisterMainAppModule();
  }
}
