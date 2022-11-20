import 'package:resources/resources.dart';

abstract class RegisterRepository {
  Future<String> submitRegisterAndGetToken({
    required ParamRegisterMdl paramRegister,
  });
}
