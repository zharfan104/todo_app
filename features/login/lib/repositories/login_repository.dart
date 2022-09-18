import 'package:resources/resources.dart';

abstract class LoginRepository {
  Future<void> submitLogin({
    required ParamLoginMdl paramLogin,
  });
}
