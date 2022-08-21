import 'package:common/common.dart';
import 'package:dependencies/dependencies.dart';
import 'package:resources/resources.dart';

part 'load_tasks_state.freezed.dart';

@freezed
class LoadTasksState with _$LoadTasksState {
  const factory LoadTasksState({
    required ViewData<List<TaskMdl>> loadTasksData,
  }) = _LoadTasksState;
}
