// ignore_for_file: invalid_annotation_target

import 'package:dependencies/dependencies.dart';

part 'task_mdl.freezed.dart';
part 'task_mdl.g.dart';

@freezed
class TaskMdl with _$TaskMdl {
  const factory TaskMdl({
    String? description,
    bool? completed,
    @JsonKey(name: '_id') String? id,
  }) = _TaskMdl;

  factory TaskMdl.fromJson(Map<String, dynamic> json) =>
      _$TaskMdlFromJson(json);
}
