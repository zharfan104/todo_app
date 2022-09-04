import 'package:component/component.dart';
import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';
import 'package:router/router.dart';

import '../../../cubits/index.dart';

class TodoListAppBarView extends StatelessWidget
    implements PreferredSizeWidget {
  const TodoListAppBarView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyAppBar(
      title: 'To do list',
      actions: [
        IconButton(
          onPressed: context.read<TaskListCubit>().sortAllTasks,
          icon: const Icon(Icons.refresh_outlined),
        ),
      ],
      leading: IconButton(
        icon: const Icon(Icons.account_circle_outlined),
        onPressed: () => context.router.push(const ProfileRoute()),
      ),
    );
  }

  @override
  Size get preferredSize => MyAppBar.myAppBarSize;
}
