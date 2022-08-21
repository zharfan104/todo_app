import 'package:common/common.dart';
import 'package:dependencies/dependencies.dart';
import 'package:todo_list/repositories/index.dart';

import 'index.dart';

class AddTaskCubit extends Cubit<AddTaskState> {
  AddTaskCubit({required this.repository})
      : super(AddTaskState(
          addTaskStatus: ViewData.initial(),
        ));

  final AddTaskRepository repository;

  void onChangeTaskDescription(String val) => emit(
        state.copyWith(taskDescription: val),
      );

  Future<void> addTask() async {
    emit(state.copyWith(addTaskStatus: ViewData.loading()));
    await repository.addTask(taskDescription: state.taskDescription);
    emit(state.copyWith(addTaskStatus: ViewData.loaded()));
    emit(state.copyWith(addTaskStatus: ViewData.initial()));
  }
}
