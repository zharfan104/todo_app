import 'package:component/component.dart';
import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';
import 'package:todo_list/cubits/index.dart';
import 'package:todo_list/repositories/index.dart';

import '../listeners/index.dart';
import 'views/index.dart';
import 'widgets/index.dart';

class TodoListPage extends StatefulWidget {
  const TodoListPage({Key? key}) : super(key: key);

  @override
  State<TodoListPage> createState() => _TodoListPageState();
}

class _TodoListPageState extends State<TodoListPage> {
  final TaskListCubit taskListCubit = TaskListCubit(
    repository: LoadTasksRepositoryImpl(),
  );
  final AddTaskCubit addTaskCubit = AddTaskCubit(
    repository: AddTaskRepositoryImpl(),
  );

  @override
  void initState() {
    super.initState();
    taskListCubit.getTasks();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: taskListCubit),
        BlocProvider.value(value: addTaskCubit),
      ],
      child: BlocListener<AddTaskCubit, AddTaskState>(
        listener: AddAndLoadTaskCubitConnecterListener.listen,
        child: BlocBuilder<TaskListCubit, TaskListState>(
          builder: (context, state) {
            return Scaffold(
              appBar: const TodoListAppBarView(),
              backgroundColor: Colors.white,
              body: const TodoListBodyView(),
              floatingActionButton: AddTaskFABWidget(
                onPressed: () => _displayTextInputDialog(context),
              ),
            );
          },
        ),
      ),
    );
  }

  Future<void> _displayTextInputDialog(BuildContext context) async {
    return SubmitFormDialog.show(
      context,
      onChanged: context.read<AddTaskCubit>().onChangeTaskDescription,
      onSubmit: () {
        context.read<AddTaskCubit>().addTask();
        Navigator.pop(context);
      },
    );
  }
}
