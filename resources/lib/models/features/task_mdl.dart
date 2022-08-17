import 'package:dependencies/dependencies.dart';

part 'task_mdl.g.dart';

@JsonSerializable()
class TaskMdl {
  String? description;
  bool? completed;

  TaskMdl({
    this.description,
    this.completed,
  });

  factory TaskMdl.fromJson(Map<String, dynamic> json) =>
      _$TaskMdlFromJson(json);
  Map<String, dynamic> toJson() => _$TaskMdlToJson(this);
}
