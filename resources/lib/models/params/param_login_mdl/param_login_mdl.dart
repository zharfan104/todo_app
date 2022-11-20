import 'package:dependencies/dependencies.dart';

part 'param_login_mdl.g.dart';

@JsonSerializable()
class ParamLoginMdl {
  ParamLoginMdl({
    this.email,
    this.password,
  });
  factory ParamLoginMdl.fromJson(Map<String, dynamic> json) =>
      _$ParamLoginMdlFromJson(json);

  String? email;
  String? password;

  Map<String, dynamic> toJson() => _$ParamLoginMdlToJson(this);
}
