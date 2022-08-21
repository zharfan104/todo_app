import 'package:core/core.dart';
import 'package:dependencies/dependencies.dart';
import 'package:resources/resources.dart';

import 'add_task_repository.dart';

class AddTaskRepositoryImpl implements AddTaskRepository {
  final RestClient client = sl();

  @override
  Future<void> addTask({required String taskDescription}) => client.addTask(
        TaskMdl(description: taskDescription),
      );
}
