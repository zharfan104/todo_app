import 'package:component/component.dart';
import 'package:flutter/material.dart';

import 'widgets/index.dart';

class TodoListAppBarView extends StatelessWidget implements PreferredSizeWidget {
  const TodoListAppBarView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MyAppBar(
      title: 'To do list',
      actions: [
        RefreshListButton(),
        SetThemeButton(),
      ],
      leading: ProfileButton(),
    );
  }

  @override
  Size get preferredSize => MyAppBar.myAppBarSize;
}
