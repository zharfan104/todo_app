// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'add_task_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddTaskState {
  String get taskDescription => throw _privateConstructorUsedError;
  ViewData<void> get addTaskStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddTaskStateCopyWith<AddTaskState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddTaskStateCopyWith<$Res> {
  factory $AddTaskStateCopyWith(
          AddTaskState value, $Res Function(AddTaskState) then) =
      _$AddTaskStateCopyWithImpl<$Res>;
  $Res call({String taskDescription, ViewData<void> addTaskStatus});
}

/// @nodoc
class _$AddTaskStateCopyWithImpl<$Res> implements $AddTaskStateCopyWith<$Res> {
  _$AddTaskStateCopyWithImpl(this._value, this._then);

  final AddTaskState _value;
  // ignore: unused_field
  final $Res Function(AddTaskState) _then;

  @override
  $Res call({
    Object? taskDescription = freezed,
    Object? addTaskStatus = freezed,
  }) {
    return _then(_value.copyWith(
      taskDescription: taskDescription == freezed
          ? _value.taskDescription
          : taskDescription // ignore: cast_nullable_to_non_nullable
              as String,
      addTaskStatus: addTaskStatus == freezed
          ? _value.addTaskStatus
          : addTaskStatus // ignore: cast_nullable_to_non_nullable
              as ViewData<void>,
    ));
  }
}

/// @nodoc
abstract class _$$_AddTaskStateCopyWith<$Res>
    implements $AddTaskStateCopyWith<$Res> {
  factory _$$_AddTaskStateCopyWith(
          _$_AddTaskState value, $Res Function(_$_AddTaskState) then) =
      __$$_AddTaskStateCopyWithImpl<$Res>;
  @override
  $Res call({String taskDescription, ViewData<void> addTaskStatus});
}

/// @nodoc
class __$$_AddTaskStateCopyWithImpl<$Res>
    extends _$AddTaskStateCopyWithImpl<$Res>
    implements _$$_AddTaskStateCopyWith<$Res> {
  __$$_AddTaskStateCopyWithImpl(
      _$_AddTaskState _value, $Res Function(_$_AddTaskState) _then)
      : super(_value, (v) => _then(v as _$_AddTaskState));

  @override
  _$_AddTaskState get _value => super._value as _$_AddTaskState;

  @override
  $Res call({
    Object? taskDescription = freezed,
    Object? addTaskStatus = freezed,
  }) {
    return _then(_$_AddTaskState(
      taskDescription: taskDescription == freezed
          ? _value.taskDescription
          : taskDescription // ignore: cast_nullable_to_non_nullable
              as String,
      addTaskStatus: addTaskStatus == freezed
          ? _value.addTaskStatus
          : addTaskStatus // ignore: cast_nullable_to_non_nullable
              as ViewData<void>,
    ));
  }
}

/// @nodoc

class _$_AddTaskState implements _AddTaskState {
  const _$_AddTaskState(
      {this.taskDescription = '', required this.addTaskStatus});

  @override
  @JsonKey()
  final String taskDescription;
  @override
  final ViewData<void> addTaskStatus;

  @override
  String toString() {
    return 'AddTaskState(taskDescription: $taskDescription, addTaskStatus: $addTaskStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddTaskState &&
            const DeepCollectionEquality()
                .equals(other.taskDescription, taskDescription) &&
            const DeepCollectionEquality()
                .equals(other.addTaskStatus, addTaskStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(taskDescription),
      const DeepCollectionEquality().hash(addTaskStatus));

  @JsonKey(ignore: true)
  @override
  _$$_AddTaskStateCopyWith<_$_AddTaskState> get copyWith =>
      __$$_AddTaskStateCopyWithImpl<_$_AddTaskState>(this, _$identity);
}

abstract class _AddTaskState implements AddTaskState {
  const factory _AddTaskState(
      {final String taskDescription,
      required final ViewData<void> addTaskStatus}) = _$_AddTaskState;

  @override
  String get taskDescription;
  @override
  ViewData<void> get addTaskStatus;
  @override
  @JsonKey(ignore: true)
  _$$_AddTaskStateCopyWith<_$_AddTaskState> get copyWith =>
      throw _privateConstructorUsedError;
}
