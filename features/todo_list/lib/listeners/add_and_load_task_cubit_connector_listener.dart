import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';

import '../cubits/index.dart';

class AddAndLoadTaskCubitConnecterListener {
  static void listen(BuildContext context, AddTaskState state) {
    if (state.addTaskStatus.isLoading) {
      context.read<TaskListCubit>().showLoading();
    }
    if (state.addTaskStatus.isHasData) {
      context.read<TaskListCubit>().getTasks();
    }
  }
}
