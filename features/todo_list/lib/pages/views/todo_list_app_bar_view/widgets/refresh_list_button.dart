import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';

import '../../../../cubits/index.dart';

class RefreshListButton extends StatelessWidget {
  const RefreshListButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: context.read<TaskListCubit>().sortAllTasks,
      icon: const Icon(Icons.refresh_outlined),
    );
  }
}
