// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'response_get_profile_mdl.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResponseGetProfileMdl _$ResponseGetProfileMdlFromJson(
    Map<String, dynamic> json) {
  return _ResponseGetProfileMdl.fromJson(json);
}

/// @nodoc
mixin _$ResponseGetProfileMdl {
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  int get age => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseGetProfileMdlCopyWith<ResponseGetProfileMdl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseGetProfileMdlCopyWith<$Res> {
  factory $ResponseGetProfileMdlCopyWith(ResponseGetProfileMdl value,
          $Res Function(ResponseGetProfileMdl) then) =
      _$ResponseGetProfileMdlCopyWithImpl<$Res>;
  $Res call({String name, String email, int age, String password});
}

/// @nodoc
class _$ResponseGetProfileMdlCopyWithImpl<$Res>
    implements $ResponseGetProfileMdlCopyWith<$Res> {
  _$ResponseGetProfileMdlCopyWithImpl(this._value, this._then);

  final ResponseGetProfileMdl _value;
  // ignore: unused_field
  final $Res Function(ResponseGetProfileMdl) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? age = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ResponseGetProfileMdlCopyWith<$Res>
    implements $ResponseGetProfileMdlCopyWith<$Res> {
  factory _$$_ResponseGetProfileMdlCopyWith(_$_ResponseGetProfileMdl value,
          $Res Function(_$_ResponseGetProfileMdl) then) =
      __$$_ResponseGetProfileMdlCopyWithImpl<$Res>;
  @override
  $Res call({String name, String email, int age, String password});
}

/// @nodoc
class __$$_ResponseGetProfileMdlCopyWithImpl<$Res>
    extends _$ResponseGetProfileMdlCopyWithImpl<$Res>
    implements _$$_ResponseGetProfileMdlCopyWith<$Res> {
  __$$_ResponseGetProfileMdlCopyWithImpl(_$_ResponseGetProfileMdl _value,
      $Res Function(_$_ResponseGetProfileMdl) _then)
      : super(_value, (v) => _then(v as _$_ResponseGetProfileMdl));

  @override
  _$_ResponseGetProfileMdl get _value =>
      super._value as _$_ResponseGetProfileMdl;

  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? age = freezed,
    Object? password = freezed,
  }) {
    return _then(_$_ResponseGetProfileMdl(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResponseGetProfileMdl implements _ResponseGetProfileMdl {
  const _$_ResponseGetProfileMdl(
      {this.name = '', this.email = '', this.age = 0, this.password = ''});

  factory _$_ResponseGetProfileMdl.fromJson(Map<String, dynamic> json) =>
      _$$_ResponseGetProfileMdlFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final int age;
  @override
  @JsonKey()
  final String password;

  @override
  String toString() {
    return 'ResponseGetProfileMdl(name: $name, email: $email, age: $age, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResponseGetProfileMdl &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.age, age) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(age),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$$_ResponseGetProfileMdlCopyWith<_$_ResponseGetProfileMdl> get copyWith =>
      __$$_ResponseGetProfileMdlCopyWithImpl<_$_ResponseGetProfileMdl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResponseGetProfileMdlToJson(
      this,
    );
  }
}

abstract class _ResponseGetProfileMdl implements ResponseGetProfileMdl {
  const factory _ResponseGetProfileMdl(
      {final String name,
      final String email,
      final int age,
      final String password}) = _$_ResponseGetProfileMdl;

  factory _ResponseGetProfileMdl.fromJson(Map<String, dynamic> json) =
      _$_ResponseGetProfileMdl.fromJson;

  @override
  String get name;
  @override
  String get email;
  @override
  int get age;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$_ResponseGetProfileMdlCopyWith<_$_ResponseGetProfileMdl> get copyWith =>
      throw _privateConstructorUsedError;
}
