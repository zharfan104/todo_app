import 'package:dependencies/dependencies.dart';

part 'param_update_profile_mdl.g.dart';

@JsonSerializable()
class ParamUpdateProfileMdl {
  String? name;
  String? email;
  int? age;

  ParamUpdateProfileMdl({
    this.name,
    this.email,
    this.age,
  });

  factory ParamUpdateProfileMdl.fromJson(Map<String, dynamic> json) => _$ParamUpdateProfileMdlFromJson(json);

  Map<String, dynamic> toJson() => _$ParamUpdateProfileMdlToJson(this);
}
