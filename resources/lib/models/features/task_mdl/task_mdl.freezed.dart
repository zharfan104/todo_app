// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'task_mdl.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TaskMdl _$TaskMdlFromJson(Map<String, dynamic> json) {
  return _TaskMdl.fromJson(json);
}

/// @nodoc
mixin _$TaskMdl {
  String? get description => throw _privateConstructorUsedError;
  bool? get completed => throw _privateConstructorUsedError;
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskMdlCopyWith<TaskMdl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskMdlCopyWith<$Res> {
  factory $TaskMdlCopyWith(TaskMdl value, $Res Function(TaskMdl) then) = _$TaskMdlCopyWithImpl<$Res>;
  $Res call({String? description, bool? completed, @JsonKey(name: '_id') String? id});
}

/// @nodoc
class _$TaskMdlCopyWithImpl<$Res> implements $TaskMdlCopyWith<$Res> {
  _$TaskMdlCopyWithImpl(this._value, this._then);

  final TaskMdl _value;
  // ignore: unused_field
  final $Res Function(TaskMdl) _then;

  @override
  $Res call({
    Object? description = freezed,
    Object? completed = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      completed: completed == freezed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_TaskMdlCopyWith<$Res> implements $TaskMdlCopyWith<$Res> {
  factory _$$_TaskMdlCopyWith(_$_TaskMdl value, $Res Function(_$_TaskMdl) then) = __$$_TaskMdlCopyWithImpl<$Res>;
  @override
  $Res call({String? description, bool? completed, @JsonKey(name: '_id') String? id});
}

/// @nodoc
class __$$_TaskMdlCopyWithImpl<$Res> extends _$TaskMdlCopyWithImpl<$Res> implements _$$_TaskMdlCopyWith<$Res> {
  __$$_TaskMdlCopyWithImpl(_$_TaskMdl _value, $Res Function(_$_TaskMdl) _then)
      : super(_value, (v) => _then(v as _$_TaskMdl));

  @override
  _$_TaskMdl get _value => super._value as _$_TaskMdl;

  @override
  $Res call({
    Object? description = freezed,
    Object? completed = freezed,
    Object? id = freezed,
  }) {
    return _then(_$_TaskMdl(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      completed: completed == freezed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TaskMdl implements _TaskMdl {
  const _$_TaskMdl({this.description, this.completed, @JsonKey(name: '_id') this.id});

  factory _$_TaskMdl.fromJson(Map<String, dynamic> json) => _$$_TaskMdlFromJson(json);

  @override
  final String? description;
  @override
  final bool? completed;
  @override
  @JsonKey(name: '_id')
  final String? id;

  @override
  String toString() {
    return 'TaskMdl(description: $description, completed: $completed, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TaskMdl &&
            const DeepCollectionEquality().equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.completed, completed) &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(completed), const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$_TaskMdlCopyWith<_$_TaskMdl> get copyWith => __$$_TaskMdlCopyWithImpl<_$_TaskMdl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TaskMdlToJson(
      this,
    );
  }
}

abstract class _TaskMdl implements TaskMdl {
  const factory _TaskMdl({final String? description, final bool? completed, @JsonKey(name: '_id') final String? id}) =
      _$_TaskMdl;

  factory _TaskMdl.fromJson(Map<String, dynamic> json) = _$_TaskMdl.fromJson;

  @override
  String? get description;
  @override
  bool? get completed;
  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$_TaskMdlCopyWith<_$_TaskMdl> get copyWith => throw _privateConstructorUsedError;
}
