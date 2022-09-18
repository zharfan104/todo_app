abstract class AccountManagementService {
  bool get isLoggedIn;
  Future<void> login({required String token});
  Future<void> logout();
  String? getToken();
}
