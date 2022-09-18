import 'package:dependencies/dependencies.dart';

part 'param_register_mdl.g.dart';

@JsonSerializable()
class ParamRegisterMdl {
  String? name;
  String? email;
  String? password;
  int? age;

  ParamRegisterMdl({
    this.name,
    this.email,
    this.password,
    this.age,
  });

  factory ParamRegisterMdl.fromJson(Map<String, dynamic> json) => _$ParamRegisterMdlFromJson(json);

  Map<String, dynamic> toJson() => _$ParamRegisterMdlToJson(this);
}
