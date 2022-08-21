import 'package:component/component.dart';
import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';
import 'package:resources/resources.dart';
import 'package:todo_list/cubits/index.dart';

import 'widgets/index.dart';

class TodoListBodyView extends StatelessWidget {
  const TodoListBodyView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoadTasksCubit, LoadTasksState>(
      builder: (context, state) {
        if (state.loadTasksData.isLoading) {
          return const MyLoadingIndicator();
        }

        if (state.loadTasksData.isError) {
          return Text(state.loadTasksData.message);
        }

        if (state.loadTasksData.isHasData) {
          final tasks = state.loadTasksData.data!;

          return AutoAnimatedList<TaskMdl>(
            items: tasks,
            itemBuilder: (context, task, index, animation) {
              return SizeFadeTransition(
                animation: animation,
                child: TodoListItemWidget(index: index, task: task),
              );
            },
          );
        }

        return const SizedBox();
      },
    );
  }
}
