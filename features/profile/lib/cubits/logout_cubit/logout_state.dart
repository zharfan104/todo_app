import 'package:common/common.dart';
import 'package:dependencies/dependencies.dart';

part 'logout_state.freezed.dart';

@freezed
class LogoutState with _$LogoutState {
  const factory LogoutState({
    required ViewData<void> submitLogoutStatus,
  }) = _LogoutState;
}
