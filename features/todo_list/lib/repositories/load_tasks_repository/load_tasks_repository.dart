import 'package:resources/resources.dart';

abstract class LoadTasksRepository {
  Future<ResponseGetTaskMdl> getTasks();
  Future<void> updateTasks({
    String? id,
    bool? isCompleted,
  });
}
