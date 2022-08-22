// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'task_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TaskListState {
  ViewData<List<TaskMdl>> get loadTasksData =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskListStateCopyWith<TaskListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskListStateCopyWith<$Res> {
  factory $TaskListStateCopyWith(
          TaskListState value, $Res Function(TaskListState) then) =
      _$TaskListStateCopyWithImpl<$Res>;
  $Res call({ViewData<List<TaskMdl>> loadTasksData});
}

/// @nodoc
class _$TaskListStateCopyWithImpl<$Res>
    implements $TaskListStateCopyWith<$Res> {
  _$TaskListStateCopyWithImpl(this._value, this._then);

  final TaskListState _value;
  // ignore: unused_field
  final $Res Function(TaskListState) _then;

  @override
  $Res call({
    Object? loadTasksData = freezed,
  }) {
    return _then(_value.copyWith(
      loadTasksData: loadTasksData == freezed
          ? _value.loadTasksData
          : loadTasksData // ignore: cast_nullable_to_non_nullable
              as ViewData<List<TaskMdl>>,
    ));
  }
}

/// @nodoc
abstract class _$$_TaskListStateCopyWith<$Res>
    implements $TaskListStateCopyWith<$Res> {
  factory _$$_TaskListStateCopyWith(
          _$_TaskListState value, $Res Function(_$_TaskListState) then) =
      __$$_TaskListStateCopyWithImpl<$Res>;
  @override
  $Res call({ViewData<List<TaskMdl>> loadTasksData});
}

/// @nodoc
class __$$_TaskListStateCopyWithImpl<$Res>
    extends _$TaskListStateCopyWithImpl<$Res>
    implements _$$_TaskListStateCopyWith<$Res> {
  __$$_TaskListStateCopyWithImpl(
      _$_TaskListState _value, $Res Function(_$_TaskListState) _then)
      : super(_value, (v) => _then(v as _$_TaskListState));

  @override
  _$_TaskListState get _value => super._value as _$_TaskListState;

  @override
  $Res call({
    Object? loadTasksData = freezed,
  }) {
    return _then(_$_TaskListState(
      loadTasksData: loadTasksData == freezed
          ? _value.loadTasksData
          : loadTasksData // ignore: cast_nullable_to_non_nullable
              as ViewData<List<TaskMdl>>,
    ));
  }
}

/// @nodoc

class _$_TaskListState implements _TaskListState {
  const _$_TaskListState({required this.loadTasksData});

  @override
  final ViewData<List<TaskMdl>> loadTasksData;

  @override
  String toString() {
    return 'TaskListState(loadTasksData: $loadTasksData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TaskListState &&
            const DeepCollectionEquality()
                .equals(other.loadTasksData, loadTasksData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(loadTasksData));

  @JsonKey(ignore: true)
  @override
  _$$_TaskListStateCopyWith<_$_TaskListState> get copyWith =>
      __$$_TaskListStateCopyWithImpl<_$_TaskListState>(this, _$identity);
}

abstract class _TaskListState implements TaskListState {
  const factory _TaskListState(
          {required final ViewData<List<TaskMdl>> loadTasksData}) =
      _$_TaskListState;

  @override
  ViewData<List<TaskMdl>> get loadTasksData;
  @override
  @JsonKey(ignore: true)
  _$$_TaskListStateCopyWith<_$_TaskListState> get copyWith =>
      throw _privateConstructorUsedError;
}
