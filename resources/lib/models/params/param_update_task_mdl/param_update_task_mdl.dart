import 'package:dependencies/dependencies.dart';

part 'param_update_task_mdl.g.dart';

@JsonSerializable()
class ParamUpdateTaskMdl {
  bool? completed;

  ParamUpdateTaskMdl({
    this.completed,
  });

  factory ParamUpdateTaskMdl.fromJson(Map<String, dynamic> json) =>
      _$ParamUpdateTaskMdlFromJson(json);

  Map<String, dynamic> toJson() => _$ParamUpdateTaskMdlToJson(this);
}
