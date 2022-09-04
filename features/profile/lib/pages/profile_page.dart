import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';

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
      child: Scaffold(
        body: BlocBuilder<ProfileCubit, ProfileState>(
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(state.email),
                Text(state.name),
              ],
            );
          },
        ),
      ),
    );
  }
}
