import 'package:common/common.dart';
import 'package:dependencies/dependencies.dart';
import 'package:profile/cubits/profile_state.dart';

import '../repositories/profile_repository.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit({required this.repository})
      : super(ProfileState(
          loadProfileStatus: ViewData.initial(),
        ));

  ProfileRepository repository;

  void getProfile() async {
    emit(state.copyWith(loadProfileStatus: ViewData.loading()));
    final response = await repository.getProfile();

    emit(state.copyWith(
      loadProfileStatus: ViewData.loaded(data: response),
    ));
  }
}
