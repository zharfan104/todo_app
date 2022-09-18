import 'package:core/core.dart';
import 'package:dependencies/dependencies.dart';

import 'logout_repository.dart';

class LogoutRepositoryImpl extends LogoutRepository {
  final AccountManagementService accountManagementService = sl();

  @override
  Future<void> logout() => accountManagementService.logout();
}
