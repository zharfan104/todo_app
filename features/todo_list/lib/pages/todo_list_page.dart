import 'package:component/component.dart';
import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';
import 'package:todo_list/cubits/index.dart';
import 'package:todo_list/repositories/index.dart';

import 'views/index.dart';

class TodoListPage extends StatefulWidget {
  const TodoListPage({Key? key}) : super(key: key);

  @override
  State<TodoListPage> createState() => _TodoListPageState();
}

class _TodoListPageState extends State<TodoListPage> {
  final LoadTasksCubit loadTasksCubit = LoadTasksCubit(
    repository: LoadTasksRepositoryImpl(),
  );

  @override
  void initState() {
    super.initState();
    loadTasksCubit.getTasks();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: loadTasksCubit,
      child: BlocBuilder<LoadTasksCubit, LoadTasksState>(
        builder: (context, state) {
          return const Scaffold(
            appBar: MyAppBar(title: 'To do list'),
            backgroundColor: Colors.white,
            body: TodoListBodyView(),
          );
        },
      ),
    );
  }
}
