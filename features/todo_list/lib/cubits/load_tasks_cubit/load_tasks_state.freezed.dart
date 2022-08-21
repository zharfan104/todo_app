// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'load_tasks_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoadTasksState {
  ViewData<List<TaskMdl>> get loadTasksData =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoadTasksStateCopyWith<LoadTasksState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadTasksStateCopyWith<$Res> {
  factory $LoadTasksStateCopyWith(
          LoadTasksState value, $Res Function(LoadTasksState) then) =
      _$LoadTasksStateCopyWithImpl<$Res>;
  $Res call({ViewData<List<TaskMdl>> loadTasksData});
}

/// @nodoc
class _$LoadTasksStateCopyWithImpl<$Res>
    implements $LoadTasksStateCopyWith<$Res> {
  _$LoadTasksStateCopyWithImpl(this._value, this._then);

  final LoadTasksState _value;
  // ignore: unused_field
  final $Res Function(LoadTasksState) _then;

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
abstract class _$$_LoadTasksStateCopyWith<$Res>
    implements $LoadTasksStateCopyWith<$Res> {
  factory _$$_LoadTasksStateCopyWith(
          _$_LoadTasksState value, $Res Function(_$_LoadTasksState) then) =
      __$$_LoadTasksStateCopyWithImpl<$Res>;
  @override
  $Res call({ViewData<List<TaskMdl>> loadTasksData});
}

/// @nodoc
class __$$_LoadTasksStateCopyWithImpl<$Res>
    extends _$LoadTasksStateCopyWithImpl<$Res>
    implements _$$_LoadTasksStateCopyWith<$Res> {
  __$$_LoadTasksStateCopyWithImpl(
      _$_LoadTasksState _value, $Res Function(_$_LoadTasksState) _then)
      : super(_value, (v) => _then(v as _$_LoadTasksState));

  @override
  _$_LoadTasksState get _value => super._value as _$_LoadTasksState;

  @override
  $Res call({
    Object? loadTasksData = freezed,
  }) {
    return _then(_$_LoadTasksState(
      loadTasksData: loadTasksData == freezed
          ? _value.loadTasksData
          : loadTasksData // ignore: cast_nullable_to_non_nullable
              as ViewData<List<TaskMdl>>,
    ));
  }
}

/// @nodoc

class _$_LoadTasksState implements _LoadTasksState {
  const _$_LoadTasksState({required this.loadTasksData});

  @override
  final ViewData<List<TaskMdl>> loadTasksData;

  @override
  String toString() {
    return 'LoadTasksState(loadTasksData: $loadTasksData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadTasksState &&
            const DeepCollectionEquality()
                .equals(other.loadTasksData, loadTasksData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(loadTasksData));

  @JsonKey(ignore: true)
  @override
  _$$_LoadTasksStateCopyWith<_$_LoadTasksState> get copyWith =>
      __$$_LoadTasksStateCopyWithImpl<_$_LoadTasksState>(this, _$identity);
}

abstract class _LoadTasksState implements LoadTasksState {
  const factory _LoadTasksState(
          {required final ViewData<List<TaskMdl>> loadTasksData}) =
      _$_LoadTasksState;

  @override
  ViewData<List<TaskMdl>> get loadTasksData;
  @override
  @JsonKey(ignore: true)
  _$$_LoadTasksStateCopyWith<_$_LoadTasksState> get copyWith =>
      throw _privateConstructorUsedError;
}
