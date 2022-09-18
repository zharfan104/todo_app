// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'logout_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LogoutState {
  ViewData<void> get submitLogoutStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LogoutStateCopyWith<LogoutState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogoutStateCopyWith<$Res> {
  factory $LogoutStateCopyWith(
          LogoutState value, $Res Function(LogoutState) then) =
      _$LogoutStateCopyWithImpl<$Res>;
  $Res call({ViewData<void> submitLogoutStatus});
}

/// @nodoc
class _$LogoutStateCopyWithImpl<$Res> implements $LogoutStateCopyWith<$Res> {
  _$LogoutStateCopyWithImpl(this._value, this._then);

  final LogoutState _value;
  // ignore: unused_field
  final $Res Function(LogoutState) _then;

  @override
  $Res call({
    Object? submitLogoutStatus = freezed,
  }) {
    return _then(_value.copyWith(
      submitLogoutStatus: submitLogoutStatus == freezed
          ? _value.submitLogoutStatus
          : submitLogoutStatus // ignore: cast_nullable_to_non_nullable
              as ViewData<void>,
    ));
  }
}

/// @nodoc
abstract class _$$_LogoutStateCopyWith<$Res>
    implements $LogoutStateCopyWith<$Res> {
  factory _$$_LogoutStateCopyWith(
          _$_LogoutState value, $Res Function(_$_LogoutState) then) =
      __$$_LogoutStateCopyWithImpl<$Res>;
  @override
  $Res call({ViewData<void> submitLogoutStatus});
}

/// @nodoc
class __$$_LogoutStateCopyWithImpl<$Res> extends _$LogoutStateCopyWithImpl<$Res>
    implements _$$_LogoutStateCopyWith<$Res> {
  __$$_LogoutStateCopyWithImpl(
      _$_LogoutState _value, $Res Function(_$_LogoutState) _then)
      : super(_value, (v) => _then(v as _$_LogoutState));

  @override
  _$_LogoutState get _value => super._value as _$_LogoutState;

  @override
  $Res call({
    Object? submitLogoutStatus = freezed,
  }) {
    return _then(_$_LogoutState(
      submitLogoutStatus: submitLogoutStatus == freezed
          ? _value.submitLogoutStatus
          : submitLogoutStatus // ignore: cast_nullable_to_non_nullable
              as ViewData<void>,
    ));
  }
}

/// @nodoc

class _$_LogoutState implements _LogoutState {
  const _$_LogoutState({required this.submitLogoutStatus});

  @override
  final ViewData<void> submitLogoutStatus;

  @override
  String toString() {
    return 'LogoutState(submitLogoutStatus: $submitLogoutStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LogoutState &&
            const DeepCollectionEquality()
                .equals(other.submitLogoutStatus, submitLogoutStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(submitLogoutStatus));

  @JsonKey(ignore: true)
  @override
  _$$_LogoutStateCopyWith<_$_LogoutState> get copyWith =>
      __$$_LogoutStateCopyWithImpl<_$_LogoutState>(this, _$identity);
}

abstract class _LogoutState implements LogoutState {
  const factory _LogoutState(
      {required final ViewData<void> submitLogoutStatus}) = _$_LogoutState;

  @override
  ViewData<void> get submitLogoutStatus;
  @override
  @JsonKey(ignore: true)
  _$$_LogoutStateCopyWith<_$_LogoutState> get copyWith =>
      throw _privateConstructorUsedError;
}
