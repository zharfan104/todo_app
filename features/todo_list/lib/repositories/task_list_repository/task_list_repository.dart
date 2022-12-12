import 'package:resources/resources.dart';

abstract class TaskListRepository {
  Future<ResponseGetTaskMdl> getTasks();
  Future<void> updateTasks({
    int? id,
    bool? isCompleted,
  });
  Future<void> deleteTask({required int id});
}
