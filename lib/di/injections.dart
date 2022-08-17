import 'package:core/core.dart';
import 'package:todo_app/di/index.dart';

class Injections {
  void init() {
    RegisterCoreModule();

    RegisterMainAppModule();
  }
}
