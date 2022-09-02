import 'package:component/component.dart';
import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';
import 'package:todo_list/cubits/index.dart';

import 'widgets/index.dart';

class TodoListBodyView extends StatelessWidget {
  const TodoListBodyView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TaskListCubit, TaskListState>(
      builder: (context, state) {
        final taskListState = state.loadTasksData;

        if (taskListState.isLoading) {
          return const MyLoadingIndicator();
        }

        if (taskListState.isError) {
          return Text(state.loadTasksData.message);
        }

        if (taskListState.isHasData) {
          final tasks = taskListState.data!;

          return ListView.builder(
            itemCount: tasks.length,
            itemBuilder: (context, index) => TodoListItemWidget(
              index: index,
              task: tasks[index],
            ),
          );
        }

        return const SizedBox();
      },
    );
  }
}
