import 'package:dependencies/dependencies.dart';
import 'package:resources/resources.dart';

class HiveInjection {
  //Because it is not so complicated app, we only will have one open HiveBox.
  static String get _hiveBox => 'hiveBox';

  static void register() async {
    await Hive.initFlutter();
    Hive.registerAdapter(AuthDataMdlAdapter());
    await Hive.openBox(_hiveBox);
  }
}
