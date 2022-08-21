import 'package:common/common.dart';
import 'package:dependencies/dependencies.dart';

part 'add_task_state.freezed.dart';

@freezed
class AddTaskState with _$AddTaskState {
  const factory AddTaskState({
    @Default('') String taskDescription,
    required ViewData<void> addTaskStatus,
  }) = _AddTaskState;
}
