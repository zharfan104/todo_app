// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'response_login_mdl.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResponseLoginMdl _$ResponseLoginMdlFromJson(Map<String, dynamic> json) {
  return _ResponseLoginMdl.fromJson(json);
}

/// @nodoc
mixin _$ResponseLoginMdl {
  String get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseLoginMdlCopyWith<ResponseLoginMdl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseLoginMdlCopyWith<$Res> {
  factory $ResponseLoginMdlCopyWith(
          ResponseLoginMdl value, $Res Function(ResponseLoginMdl) then) =
      _$ResponseLoginMdlCopyWithImpl<$Res>;
  $Res call({String token});
}

/// @nodoc
class _$ResponseLoginMdlCopyWithImpl<$Res>
    implements $ResponseLoginMdlCopyWith<$Res> {
  _$ResponseLoginMdlCopyWithImpl(this._value, this._then);

  final ResponseLoginMdl _value;
  // ignore: unused_field
  final $Res Function(ResponseLoginMdl) _then;

  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ResponseLoginMdlCopyWith<$Res>
    implements $ResponseLoginMdlCopyWith<$Res> {
  factory _$$_ResponseLoginMdlCopyWith(
          _$_ResponseLoginMdl value, $Res Function(_$_ResponseLoginMdl) then) =
      __$$_ResponseLoginMdlCopyWithImpl<$Res>;
  @override
  $Res call({String token});
}

/// @nodoc
class __$$_ResponseLoginMdlCopyWithImpl<$Res>
    extends _$ResponseLoginMdlCopyWithImpl<$Res>
    implements _$$_ResponseLoginMdlCopyWith<$Res> {
  __$$_ResponseLoginMdlCopyWithImpl(
      _$_ResponseLoginMdl _value, $Res Function(_$_ResponseLoginMdl) _then)
      : super(_value, (v) => _then(v as _$_ResponseLoginMdl));

  @override
  _$_ResponseLoginMdl get _value => super._value as _$_ResponseLoginMdl;

  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_$_ResponseLoginMdl(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResponseLoginMdl implements _ResponseLoginMdl {
  const _$_ResponseLoginMdl({this.token = ''});

  factory _$_ResponseLoginMdl.fromJson(Map<String, dynamic> json) =>
      _$$_ResponseLoginMdlFromJson(json);

  @override
  @JsonKey()
  final String token;

  @override
  String toString() {
    return 'ResponseLoginMdl(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResponseLoginMdl &&
            const DeepCollectionEquality().equals(other.token, token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(token));

  @JsonKey(ignore: true)
  @override
  _$$_ResponseLoginMdlCopyWith<_$_ResponseLoginMdl> get copyWith =>
      __$$_ResponseLoginMdlCopyWithImpl<_$_ResponseLoginMdl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResponseLoginMdlToJson(
      this,
    );
  }
}

abstract class _ResponseLoginMdl implements ResponseLoginMdl {
  const factory _ResponseLoginMdl({final String token}) = _$_ResponseLoginMdl;

  factory _ResponseLoginMdl.fromJson(Map<String, dynamic> json) =
      _$_ResponseLoginMdl.fromJson;

  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$_ResponseLoginMdlCopyWith<_$_ResponseLoginMdl> get copyWith =>
      throw _privateConstructorUsedError;
}
