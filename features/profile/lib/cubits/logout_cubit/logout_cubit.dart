import 'package:common/common.dart';
import 'package:dependencies/dependencies.dart';
import 'package:profile/repositories/logout_repository/logout_repository.dart';

import 'index.dart';

class LogoutCubit extends Cubit<LogoutState> {
  LogoutCubit({
    required this.logoutRepository,
  }) : super(LogoutState(submitLogoutStatus: ViewData.initial()));

  final LogoutRepository logoutRepository;

  Future<void> logout() async {
    emit(state.copyWith(submitLogoutStatus: ViewData.loading()));

    await logoutRepository.logout();

    emit(state.copyWith(submitLogoutStatus: ViewData.loaded()));
  }
}
