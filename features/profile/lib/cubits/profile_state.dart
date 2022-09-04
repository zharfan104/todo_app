import 'package:common/common.dart';
import 'package:dependencies/dependencies.dart';

part 'profile_state.freezed.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    @Default('') String name,
    @Default('') String email,
    required ViewData<void> loadProfileStatus,
  }) = _ProfileState;
}
