import 'package:core/core.dart';
import 'package:dependencies/dependencies.dart';
import 'package:resources/resources.dart';

import 'task_list_repository.dart';

class TaskListRepositoryImpl implements TaskListRepository {
  final RestClient client = sl();

  @override
  Future<ResponseGetTaskMdl> getTasks() => client.getTasks();

  @override
  Future<void> updateTasks({
    String? id,
    bool? isCompleted,
  }) =>
      client.updateTask(
        id,
        ParamUpdateTaskMdl(completed: isCompleted),
      );

  @override
  Future<void> deleteTask({required String id}) => client.deleteTask(id);
}
