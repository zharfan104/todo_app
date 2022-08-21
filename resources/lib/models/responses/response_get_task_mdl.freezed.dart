// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'response_get_task_mdl.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResponseGetTaskMdl _$ResponseGetTaskMdlFromJson(Map<String, dynamic> json) {
  return _ResponseGetTaskMdl.fromJson(json);
}

/// @nodoc
mixin _$ResponseGetTaskMdl {
  int? get count => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  List<TaskMdl>? get tasks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseGetTaskMdlCopyWith<ResponseGetTaskMdl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseGetTaskMdlCopyWith<$Res> {
  factory $ResponseGetTaskMdlCopyWith(
          ResponseGetTaskMdl value, $Res Function(ResponseGetTaskMdl) then) =
      _$ResponseGetTaskMdlCopyWithImpl<$Res>;
  $Res call({int? count, @JsonKey(name: 'data') List<TaskMdl>? tasks});
}

/// @nodoc
class _$ResponseGetTaskMdlCopyWithImpl<$Res>
    implements $ResponseGetTaskMdlCopyWith<$Res> {
  _$ResponseGetTaskMdlCopyWithImpl(this._value, this._then);

  final ResponseGetTaskMdl _value;
  // ignore: unused_field
  final $Res Function(ResponseGetTaskMdl) _then;

  @override
  $Res call({
    Object? count = freezed,
    Object? tasks = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      tasks: tasks == freezed
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TaskMdl>?,
    ));
  }
}

/// @nodoc
abstract class _$$_ResponseGetTaskMdlCopyWith<$Res>
    implements $ResponseGetTaskMdlCopyWith<$Res> {
  factory _$$_ResponseGetTaskMdlCopyWith(_$_ResponseGetTaskMdl value,
          $Res Function(_$_ResponseGetTaskMdl) then) =
      __$$_ResponseGetTaskMdlCopyWithImpl<$Res>;
  @override
  $Res call({int? count, @JsonKey(name: 'data') List<TaskMdl>? tasks});
}

/// @nodoc
class __$$_ResponseGetTaskMdlCopyWithImpl<$Res>
    extends _$ResponseGetTaskMdlCopyWithImpl<$Res>
    implements _$$_ResponseGetTaskMdlCopyWith<$Res> {
  __$$_ResponseGetTaskMdlCopyWithImpl(
      _$_ResponseGetTaskMdl _value, $Res Function(_$_ResponseGetTaskMdl) _then)
      : super(_value, (v) => _then(v as _$_ResponseGetTaskMdl));

  @override
  _$_ResponseGetTaskMdl get _value => super._value as _$_ResponseGetTaskMdl;

  @override
  $Res call({
    Object? count = freezed,
    Object? tasks = freezed,
  }) {
    return _then(_$_ResponseGetTaskMdl(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      tasks: tasks == freezed
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TaskMdl>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResponseGetTaskMdl implements _ResponseGetTaskMdl {
  const _$_ResponseGetTaskMdl(
      {this.count, @JsonKey(name: 'data') final List<TaskMdl>? tasks})
      : _tasks = tasks;

  factory _$_ResponseGetTaskMdl.fromJson(Map<String, dynamic> json) =>
      _$$_ResponseGetTaskMdlFromJson(json);

  @override
  final int? count;
  final List<TaskMdl>? _tasks;
  @override
  @JsonKey(name: 'data')
  List<TaskMdl>? get tasks {
    final value = _tasks;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ResponseGetTaskMdl(count: $count, tasks: $tasks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResponseGetTaskMdl &&
            const DeepCollectionEquality().equals(other.count, count) &&
            const DeepCollectionEquality().equals(other._tasks, _tasks));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(count),
      const DeepCollectionEquality().hash(_tasks));

  @JsonKey(ignore: true)
  @override
  _$$_ResponseGetTaskMdlCopyWith<_$_ResponseGetTaskMdl> get copyWith =>
      __$$_ResponseGetTaskMdlCopyWithImpl<_$_ResponseGetTaskMdl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResponseGetTaskMdlToJson(
      this,
    );
  }
}

abstract class _ResponseGetTaskMdl implements ResponseGetTaskMdl {
  const factory _ResponseGetTaskMdl(
          {final int? count,
          @JsonKey(name: 'data') final List<TaskMdl>? tasks}) =
      _$_ResponseGetTaskMdl;

  factory _ResponseGetTaskMdl.fromJson(Map<String, dynamic> json) =
      _$_ResponseGetTaskMdl.fromJson;

  @override
  int? get count;
  @override
  @JsonKey(name: 'data')
  List<TaskMdl>? get tasks;
  @override
  @JsonKey(ignore: true)
  _$$_ResponseGetTaskMdlCopyWith<_$_ResponseGetTaskMdl> get copyWith =>
      throw _privateConstructorUsedError;
}
