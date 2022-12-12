import 'package:common/common.dart';
import 'package:dependencies/dependencies.dart';
import 'package:resources/resources.dart';

import '../../repositories/index.dart';
import 'index.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit({required this.repository})
      : super(ProfileState(
          loadProfileStatus: ViewData.initial(),
        ));

  ProfileRepository repository;

  Future<void> getProfile() async {
    emit(state.copyWith(loadProfileStatus: ViewData.loading()));
    final response = await repository.getProfile();

    _emitProfileResponseToState(response);
  }

  void onNameChanged(String name) => emit(state.copyWith(name: name));
  void onEmailChanged(String email) => emit(state.copyWith(email: email));
  void onAgeChanged(String age) => emit(state.copyWith(age: int.parse(age)));
  void onPasswordChanged(String password) =>
      emit(state.copyWith(password: password));

  void updateProfile() async {
    emit(state.copyWith(loadProfileStatus: ViewData.loading()));

    final response =
        await repository.updateProfile(profile: state.toParamUpdateProfileMdl);

    _emitProfileResponseToState(response);

    emit(state.copyWith(loadProfileStatus: ViewData.loaded()));
  }

  void _emitProfileResponseToState(ResponseGetProfileMdl response) {
    emit(state.copyWith(
      name: response.name,
      email: response.email,
      age: response.age,
      password: response.password,
      loadProfileStatus: ViewData.loaded(),
    ));
  }
}
