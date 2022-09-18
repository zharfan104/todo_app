import 'package:component/component.dart';
import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';

import '../../cubits/index.dart';
import '../../listeners/index.dart';
import '../../repositories/index.dart';

class ProfilePageAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ProfilePageAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LogoutCubit(logoutRepository: LogoutRepositoryImpl()),
      child: BlocConsumer<LogoutCubit, LogoutState>(
        listener: LogoutListener.listen,
        builder: (context, state) {
          return MyAppBar(
            title: "Edit Profile",
            actions: [
              IconButton(
                icon: const Icon(Icons.logout),
                onPressed: context.read<LogoutCubit>().logout,
              )
            ],
          );
        },
      ),
    );
  }

  @override
  Size get preferredSize => MyAppBar.myAppBarSize;
}
