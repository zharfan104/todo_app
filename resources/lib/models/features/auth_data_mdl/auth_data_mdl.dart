import 'package:dependencies/dependencies.dart';

part 'auth_data_mdl.g.dart';

@HiveType(typeId: 1)
class AuthDataMdl extends HiveObject {
  @HiveField(0)
  String? userToken;
}
