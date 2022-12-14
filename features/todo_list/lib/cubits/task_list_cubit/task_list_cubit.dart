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

  final TaskListRepository repository;

  Future<void> getTasks() async {
    showLoading();
    DioErrorWrapperHelper.wrap(callback: () async {
      final responseGetTasks = await repository.getTasks();
      emit(state.copyWith(
        loadTasksData: ViewData.loaded(data: responseGetTasks.tasks),
      ));
    }, errorCallback: (errorMessage) {
      emit(state.copyWith(
        loadTasksData: ViewData.error(message: errorMessage),
      ));
    });
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

  Future<void> deleteTask(int index) async {
    final tasks = List<TaskMdl>.from(state.loadTasksData.data!);
    final task = tasks.removeAt(index);
    if (task.id != null) {
      await repository.deleteTask(id: task.id!);
    }
    emit(state.copyWith(loadTasksData: ViewData.loaded(data: tasks)));
  }

  void sortAllTasks() {
    final tasks = List<TaskMdl>.from(state.loadTasksData.data!);

    final isAllTaskCompleted = tasks.every((task) => (task.completed ?? false));
    final isAlreadySorted = tasks.isSorted(taskComparator);
    final isNeedToSort = !isAllTaskCompleted && !isAlreadySorted;
    if (isNeedToSort) _sortTasks(tasks);

    showLoading();

    emit(state.copyWith(loadTasksData: ViewData.loaded(data: tasks)));
  }

  void showLoading() => emit(state.copyWith(loadTasksData: ViewData.loading()));

  Future<void> _updateTaskToNetwork({int? id, bool? isCompleted}) async {
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

  void _sortTasks(List<TaskMdl> tasks) => tasks.sort(taskComparator);

  int taskComparator(TaskMdl a, TaskMdl b) {
    if (a.completed == b.completed) {
      return 0;
    }

    if (b.completed ?? false) {
      return -1;
    }
    return 1;
  }
}
