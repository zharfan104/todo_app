import 'package:core/core.dart';
import 'package:dependencies/dependencies.dart';
import 'package:profile/repositories/profile_repository.dart';
import 'package:resources/resources.dart';

class ProfileRepositoryImpl extends ProfileRepository {
  final RestClient client = sl();

  @override
  Future<ResponseGetProfileMdl> getProfile() => client.getProfile();
}
