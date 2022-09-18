import 'package:component/component.dart';
import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';
import 'package:profile/pages/widgets/edit_profile_form.dart';

import '../cubits/index.dart';
import '../repositories/profile_repository_impl.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final profileCubit = ProfileCubit(repository: ProfileRepositoryImpl());

  @override
  void initState() {
    profileCubit.getProfile();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: profileCubit,
      child: BasePage(
        appBar: const MyAppBar(title: "Edit Profile"),
        body: BlocBuilder<ProfileCubit, ProfileState>(
          builder: (context, state) {
            if (state.loadProfileStatus.isLoading) {
              return const MyLoadingIndicator();
            }

            if (state.loadProfileStatus.isHasData) {
              return EditProfileForm(profileState: state);
            }

            if (state.loadProfileStatus.isError) {
              return ErrorTextBanner(text: state.loadProfileStatus.message);
            }

            return const SizedBox();
          },
        ),
      ),
    );
  }
}
