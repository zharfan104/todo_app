// ignore_for_file: invalid_annotation_target

import 'package:dependencies/dependencies.dart';

import '../../../resources.dart';

part 'response_get_task_mdl.freezed.dart';
part 'response_get_task_mdl.g.dart';

@freezed
class ResponseGetTaskMdl with _$ResponseGetTaskMdl {
  const factory ResponseGetTaskMdl({
    int? count,
    @JsonKey(name: 'data') List<TaskMdl>? tasks,
  }) = _ResponseGetTaskMdl;

  factory ResponseGetTaskMdl.fromJson(Map<String, dynamic> json) =>
      _$ResponseGetTaskMdlFromJson(json);
}
