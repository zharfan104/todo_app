import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';
import 'package:resources/resources.dart';

import '../../../../cubits/index.dart';

class TodoListItemWidget extends StatelessWidget {
  const TodoListItemWidget({
    Key? key,
    required this.index,
    required this.task,
  }) : super(key: key);

  final int index;
  final TaskMdl task;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(task.description ?? ''),
      autofocus: false,
      activeColor: Colors.green,
      checkColor: Colors.white,
      value: task.completed ?? false,
      onChanged: (_) => context.read<LoadTasksCubit>().updateTasks(index),
    );
  }
}
