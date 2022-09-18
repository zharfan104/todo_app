import 'package:core/core.dart';
import 'package:dependencies/dependencies.dart';
import 'package:resources/resources.dart';

import 'profile_repository.dart';

class ProfileRepositoryImpl extends ProfileRepository {
  final RestClient client = sl();

  @override
  Future<ResponseGetProfileMdl> getProfile() => client.getProfile();

  @override
  Future<ResponseGetProfileMdl> updateProfile({
    required ParamUpdateProfileMdl profile,
  }) =>
      client.updateProfile(profile);
}
