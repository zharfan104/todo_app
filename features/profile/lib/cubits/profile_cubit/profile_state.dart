import 'package:common/common.dart';
import 'package:dependencies/dependencies.dart';
import 'package:resources/models/index.dart';

part 'profile_state.freezed.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    @Default('') String name,
    @Default('') String email,
    @Default(0) int age,
    required ViewData<void> loadProfileStatus,
  }) = _ProfileState;
}

extension ProfileStateX on ProfileState {
  ParamUpdateProfileMdl get toParamUpdateProfileMdl => ParamUpdateProfileMdl(
        name: name,
        email: email,
        age: age,
      );
}
