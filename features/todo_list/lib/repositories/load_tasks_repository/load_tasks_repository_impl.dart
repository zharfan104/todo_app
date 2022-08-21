import 'package:core/core.dart';
import 'package:dependencies/dependencies.dart';
import 'package:resources/resources.dart';

import 'load_tasks_repository.dart';

class LoadTasksRepositoryImpl implements LoadTasksRepository {
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
}
