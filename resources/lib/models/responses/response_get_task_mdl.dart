import 'package:dependencies/dependencies.dart';

import '../../resources.dart';

part 'response_get_task_mdl.g.dart';

@JsonSerializable()
class ResponseGetTaskMdl {
  int? count;
  List<TaskMdl>? tasks;

  ResponseGetTaskMdl({
    this.count,
    this.tasks,
  });

  factory ResponseGetTaskMdl.fromJson(Map<String, dynamic> json) =>
      _$ResponseGetTaskMdlFromJson(json);
  Map<String, dynamic> toJson() => _$ResponseGetTaskMdlToJson(this);
}
