import 'package:resources/resources.dart';

abstract class TaskListRepository {
  Future<ResponseGetTaskMdl> getTasks();
  Future<void> updateTasks({
    String? id,
    bool? isCompleted,
  });
  Future<void> deleteTask({required String id});
}
