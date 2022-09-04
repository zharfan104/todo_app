// ignore_for_file: invalid_annotation_target

import 'package:dependencies/dependencies.dart';

part 'response_get_profile_mdl.freezed.dart';
part 'response_get_profile_mdl.g.dart';

@freezed
class ResponseGetProfileMdl with _$ResponseGetProfileMdl {
  const factory ResponseGetProfileMdl({
    String? name,
    String? email,
  }) = _ResponseGetProfileMdl;

  factory ResponseGetProfileMdl.fromJson(Map<String, dynamic> json) =>
      _$ResponseGetProfileMdlFromJson(json);
}