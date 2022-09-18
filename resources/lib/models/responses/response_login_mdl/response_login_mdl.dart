// ignore_for_file: invalid_annotation_target

import 'package:dependencies/dependencies.dart';

part 'response_login_mdl.freezed.dart';
part 'response_login_mdl.g.dart';

@freezed
class ResponseLoginMdl with _$ResponseLoginMdl {
  const factory ResponseLoginMdl({
    @Default('') String token,
  }) = _ResponseLoginMdl;

  factory ResponseLoginMdl.fromJson(Map<String, dynamic> json) =>
      _$ResponseLoginMdlFromJson(json);
}
