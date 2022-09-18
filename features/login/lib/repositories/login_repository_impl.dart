import 'package:core/core.dart';
import 'package:dependencies/dependencies.dart';
import 'package:resources/resources.dart';

import 'login_repository.dart';

class LoginRepositoryImpl extends LoginRepository {
  final RestClient client = sl();
  final AccountManagementService accountManagementService = sl();

  @override
  Future<void> submitLogin({
    required ParamLoginMdl paramLogin,
  }) async {
    final response = await client.submitLogin(paramLogin);
    accountManagementService.login(token: response.token);
  }
}
