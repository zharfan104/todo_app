import 'package:resources/resources.dart';

import 'account_management_service.dart';

class AccountManagementServiceImpl implements AccountManagementService {
  String get _tokenKey => 'tokenKey';

  @override
  bool get isLoggedIn => getToken() != null;

  @override
  Future<void> login({required String token}) =>
      HiveInjection.box.put(_tokenKey, token);

  @override
  String? getToken() => HiveInjection.box.get(_tokenKey);

  @override
  Future<void> logout() => HiveInjection.box.delete(_tokenKey);
}
