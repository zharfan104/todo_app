import 'package:common/common.dart';
import 'package:core/core.dart';
import 'package:dependencies/dependencies.dart';

import 'package:register/cubit/index.dart';
import 'package:register/repositories/index.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit({
    required this.registerRepository,
  }) : super(
          RegisterState(submitRegisterStatus: ViewData.initial()),
        );

  final RegisterRepository registerRepository;

  void onNameChanged(String name) => emit(state.copyWith(name: name));
  void onAgeChanged(String age) =>
      emit(state.copyWith(age: int.tryParse(age) ?? 0));
  void onPasswordChanged(String password) =>
      emit(state.copyWith(password: password));
  void onEmailChanged(String email) => emit(state.copyWith(email: email));

  Future<void> onClickRegisterButton() async {
    emit(state.copyWith(submitRegisterStatus: ViewData.loading()));

    final accountManagementService = sl<AccountManagementService>();

    await DioErrorWrapperHelper.wrap(
      callback: () async {
        final token = await registerRepository.submitRegisterAndGetToken(
          paramRegister: state.toParamRegisterMdl,
        );

        await accountManagementService.login(token: token);

        emit(state.copyWith(submitRegisterStatus: ViewData.loaded()));
      },
      errorCallback: (errorMessage) => emit(
        state.copyWith(
          submitRegisterStatus: ViewData.error(message: errorMessage),
        ),
      ),
    );
  }
}
