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
    return Dismissible(
      key: ValueKey(task.id),
      onDismissed: (_) => context.read<TaskListCubit>().deleteTask(index),
      child: CheckboxListTile(
        title: Text(
          task.description ?? '',
          style: TextStyle(
            decoration: (task.completed ?? false) ? TextDecoration.lineThrough : TextDecoration.none,
          ),
        ),
        autofocus: false,
        activeColor: Colors.green,
        checkColor: Colors.white,
        value: task.completed ?? false,
        onChanged: (_) => context.read<TaskListCubit>().updateTasks(index),
      ),
    );
  }
}
