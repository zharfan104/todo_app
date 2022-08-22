import 'package:common/common.dart';
import 'package:dependencies/dependencies.dart';
import 'package:resources/resources.dart';

part 'task_list_state.freezed.dart';

@freezed
class TaskListState with _$TaskListState {
  const factory TaskListState({
    required ViewData<List<TaskMdl>> loadTasksData,
  }) = _TaskListState;
}
