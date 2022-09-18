import 'package:common/common.dart';
import 'package:dependencies/dependencies.dart';
import 'package:resources/resources.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    @Default('') String email,
    @Default('') String password,
    required ViewData<void> submitLoginStatus,
  }) = _LoginState;
}

extension LoginStateX on LoginState {
  ParamLoginMdl get toParamLoginMdl => ParamLoginMdl(email: email, password: password);
  bool get isLoginDataValid => email.isNotEmpty && password.isNotEmpty;
}
