// ignore_for_file: invalid_annotation_target

import 'package:dependencies/dependencies.dart';

part 'response_get_profile_mdl.freezed.dart';
part 'response_get_profile_mdl.g.dart';

@freezed
class ResponseGetProfileMdl with _$ResponseGetProfileMdl {
  const factory ResponseGetProfileMdl({
    @Default('') String name,
    @Default('') String email,
    @Default(0) int age,
  }) = _ResponseGetProfileMdl;

  factory ResponseGetProfileMdl.fromJson(Map<String, dynamic> json) {
    var usedJson = json;
    final jsonData = json['data'];

    final isProfileObjectInsideDataKey = jsonData != null && jsonData is Map<String, dynamic>;

    if (isProfileObjectInsideDataKey) {
      usedJson = jsonData;
    }

    return _$ResponseGetProfileMdlFromJson(usedJson);
  }
}
