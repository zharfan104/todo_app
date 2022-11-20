import 'package:common/common.dart';
import 'package:dependencies/dependencies.dart';
import 'package:resources/resources.dart';

part 'register_state.freezed.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState({
    @Default('') String email,
    @Default('') String password,
    @Default('') String name,
    int? age,
    required ViewData<void> submitRegisterStatus,
  }) = _RegisterState;
}

extension RegisterStateX on RegisterState {
  ParamRegisterMdl get toParamRegisterMdl => ParamRegisterMdl(
        email: email,
        password: password,
        name: name,
        age: age,
      );

  bool get isRegisterDataValid =>
      email.isNotEmpty && password.isNotEmpty && name.isNotEmpty && age != null;
}
