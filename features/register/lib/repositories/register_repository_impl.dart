import 'package:core/core.dart';
import 'package:dependencies/dependencies.dart';
import 'package:resources/resources.dart';

import 'register_repository.dart';

class RegisterRepositoryImpl extends RegisterRepository {
  final RestClient client = sl();
  final AccountManagementService accountManagementService = sl();

  @override
  Future<String> submitRegisterAndGetToken({
    required ParamRegisterMdl paramRegister,
  }) async {
    final response = await client.submitRegister(paramRegister);
    return response.token;
  }
}
