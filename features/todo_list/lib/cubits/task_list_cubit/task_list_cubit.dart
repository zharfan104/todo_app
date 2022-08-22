import 'package:common/common.dart';
import 'package:dependencies/dependencies.dart';
import 'package:resources/resources.dart';

import '../../repositories/index.dart';
import 'task_list_state.dart';

class TaskListCubit extends Cubit<TaskListState> {
  TaskListCubit({required this.repository})
      : super(TaskListState(
          loadTasksData: ViewData.initial(),
        ));

  final LoadTasksRepository repository;

  Future<void> getTasks() async {
    showLoading();
    final responseGetTasks = await repository.getTasks();
    emit(state.copyWith(
      loadTasksData: ViewData.loaded(data: responseGetTasks.tasks),
    ));
  }

  Future<void> updateTasks(int index) async {
    final tasks = state.loadTasksData.data!;
    final task = tasks[index];

    final List<TaskMdl> updatedTasks = List.from(tasks);

    final updatedIsCompleted = !(task.completed ?? false);
    updatedTasks[index] = task.copyWith(completed: updatedIsCompleted);

    emit(state.copyWith(loadTasksData: ViewData.loaded(data: updatedTasks)));

    await _updateTaskToNetwork(
      id: task.id,
      isCompleted: updatedIsCompleted,
    );
  }

  void sortAllTasks() {
    final tasks = state.loadTasksData.data!;

    final isAllTaskCompleted = tasks.every((task) => (task.completed ?? false));
    if (!isAllTaskCompleted) _sortTasks(tasks);

    showLoading();

    emit(state.copyWith(loadTasksData: ViewData.loaded(data: tasks)));
  }

  void showLoading() => emit(state.copyWith(loadTasksData: ViewData.loading()));

  Future<void> _updateTaskToNetwork({String? id, bool? isCompleted}) async {
    try {
      await repository.updateTasks(
        id: id,
        isCompleted: isCompleted,
      );
    } on DioError catch (e) {
      emit(
        state.copyWith(loadTasksData: ViewData.error(message: e.message)),
      );
    }
  }

  void _sortTasks(List<TaskMdl> tasks) {
    tasks.sort((a, b) {
      if (b.completed ?? false) {
        return -1;
      }
      return 1;
    });
  }
}
