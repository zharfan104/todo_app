import 'package:common/common.dart';
import 'package:dependencies/dependencies.dart';
import 'package:resources/resources.dart';

part 'profile_state.freezed.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    required ViewData<ResponseGetProfileMdl> loadProfileStatus,
  }) = _ProfileState;
}
