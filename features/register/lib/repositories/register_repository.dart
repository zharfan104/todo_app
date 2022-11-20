import 'package:resources/resources.dart';

// ignore: one_member_abstracts
abstract class RegisterRepository {
  Future<String> submitRegisterAndGetToken({
    required ParamRegisterMdl paramRegister,
  });
}
