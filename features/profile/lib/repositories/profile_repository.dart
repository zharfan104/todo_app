import 'package:resources/resources.dart';

abstract class ProfileRepository {
  Future<ResponseGetProfileMdl> getProfile();
}
