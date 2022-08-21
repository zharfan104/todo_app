import 'package:common/common.dart';
import 'package:dependencies/dependencies.dart';
import 'package:resources/resources.dart';

import '../../repositories/index.dart';
import 'load_tasks_state.dart';

class LoadTasksCubit extends Cubit<LoadTasksState> {
  LoadTasksCubit({required this.repository})
      : super(LoadTasksState(
          loadTasksData: ViewData.initial(),
        ));

  final LoadTasksRepository repository;

  Future<void> getTasks() async {
    emit(state.copyWith(loadTasksData: ViewData.loading()));
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

    final isAllTaskCompleted =
        updatedTasks.every((task) => (task.completed ?? false));
    if (!isAllTaskCompleted) _sortTasks(updatedTasks);

    emit(state.copyWith(loadTasksData: ViewData.loaded(data: updatedTasks)));

    await _updateTaskToNetwork(
      id: task.id,
      isCompleted: updatedIsCompleted,
    );
  }

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
