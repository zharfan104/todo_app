import 'package:common/common.dart';
import 'package:dependencies/dependencies.dart';
import 'package:login/repositories/index.dart';

import 'index.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit({
    required this.loginRepository,
  }) : super(
          LoginState(submitLoginStatus: ViewData.initial()),
        );

  final LoginRepository loginRepository;

  void onPasswordChanged(String password) =>
      emit(state.copyWith(password: password));
  void onEmailChanged(String email) => emit(state.copyWith(email: email));

  Future<void> onClickLoginButton() async {
    emit(state.copyWith(submitLoginStatus: ViewData.loading()));

    await DioErrorWrapperHelper.wrap(
      callback: () async {
        await loginRepository.submitLogin(paramLogin: state.toParamLoginMdl);
        emit(state.copyWith(submitLoginStatus: ViewData.loaded()));
      },
      errorCallback: (errorMessage) => emit(
        state.copyWith(
            submitLoginStatus: ViewData.error(message: errorMessage)),
      ),
    );
  }
}
