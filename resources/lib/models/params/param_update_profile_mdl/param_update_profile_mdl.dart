import 'package:dependencies/dependencies.dart';

part 'param_update_profile_mdl.g.dart';

@JsonSerializable()
class ParamUpdateProfileMdl {
  ParamUpdateProfileMdl({
    this.name,
    this.email,
    this.age,
  });

  factory ParamUpdateProfileMdl.fromJson(Map<String, dynamic> json) =>
      _$ParamUpdateProfileMdlFromJson(json);

  String? name;
  String? email;
  int? age;

  Map<String, dynamic> toJson() => _$ParamUpdateProfileMdlToJson(this);
}
