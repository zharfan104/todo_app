import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';

import '../cubits/index.dart';

class LoadAndAddTaskCubitConnecterListener {
  static void listen(BuildContext context, AddTaskState state) {
    if (state.addTaskStatus.isLoading) {
      context.read<LoadTasksCubit>().showLoading();
    }
    if (state.addTaskStatus.isHasData) {
      context.read<LoadTasksCubit>().getTasks();
    }
  }
}
