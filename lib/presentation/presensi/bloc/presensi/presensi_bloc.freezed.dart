// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'presensi_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PresensiEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getPresensi,
    required TResult Function() startPage,
    required TResult Function() nextPage,
    required TResult Function(String status) setAttendanceStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getPresensi,
    TResult? Function()? startPage,
    TResult? Function()? nextPage,
    TResult? Function(String status)? setAttendanceStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getPresensi,
    TResult Function()? startPage,
    TResult Function()? nextPage,
    TResult Function(String status)? setAttendanceStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetPresensi value) getPresensi,
    required TResult Function(_StartPage value) startPage,
    required TResult Function(_NextPage value) nextPage,
    required TResult Function(_SetAttendanceStatus value) setAttendanceStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetPresensi value)? getPresensi,
    TResult? Function(_StartPage value)? startPage,
    TResult? Function(_NextPage value)? nextPage,
    TResult? Function(_SetAttendanceStatus value)? setAttendanceStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetPresensi value)? getPresensi,
    TResult Function(_StartPage value)? startPage,
    TResult Function(_NextPage value)? nextPage,
    TResult Function(_SetAttendanceStatus value)? setAttendanceStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PresensiEventCopyWith<$Res> {
  factory $PresensiEventCopyWith(
          PresensiEvent value, $Res Function(PresensiEvent) then) =
      _$PresensiEventCopyWithImpl<$Res, PresensiEvent>;
}

/// @nodoc
class _$PresensiEventCopyWithImpl<$Res, $Val extends PresensiEvent>
    implements $PresensiEventCopyWith<$Res> {
  _$PresensiEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PresensiEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$PresensiEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of PresensiEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'PresensiEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getPresensi,
    required TResult Function() startPage,
    required TResult Function() nextPage,
    required TResult Function(String status) setAttendanceStatus,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getPresensi,
    TResult? Function()? startPage,
    TResult? Function()? nextPage,
    TResult? Function(String status)? setAttendanceStatus,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getPresensi,
    TResult Function()? startPage,
    TResult Function()? nextPage,
    TResult Function(String status)? setAttendanceStatus,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetPresensi value) getPresensi,
    required TResult Function(_StartPage value) startPage,
    required TResult Function(_NextPage value) nextPage,
    required TResult Function(_SetAttendanceStatus value) setAttendanceStatus,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetPresensi value)? getPresensi,
    TResult? Function(_StartPage value)? startPage,
    TResult? Function(_NextPage value)? nextPage,
    TResult? Function(_SetAttendanceStatus value)? setAttendanceStatus,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetPresensi value)? getPresensi,
    TResult Function(_StartPage value)? startPage,
    TResult Function(_NextPage value)? nextPage,
    TResult Function(_SetAttendanceStatus value)? setAttendanceStatus,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements PresensiEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetPresensiImplCopyWith<$Res> {
  factory _$$GetPresensiImplCopyWith(
          _$GetPresensiImpl value, $Res Function(_$GetPresensiImpl) then) =
      __$$GetPresensiImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetPresensiImplCopyWithImpl<$Res>
    extends _$PresensiEventCopyWithImpl<$Res, _$GetPresensiImpl>
    implements _$$GetPresensiImplCopyWith<$Res> {
  __$$GetPresensiImplCopyWithImpl(
      _$GetPresensiImpl _value, $Res Function(_$GetPresensiImpl) _then)
      : super(_value, _then);

  /// Create a copy of PresensiEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetPresensiImpl implements _GetPresensi {
  const _$GetPresensiImpl();

  @override
  String toString() {
    return 'PresensiEvent.getPresensi()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetPresensiImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getPresensi,
    required TResult Function() startPage,
    required TResult Function() nextPage,
    required TResult Function(String status) setAttendanceStatus,
  }) {
    return getPresensi();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getPresensi,
    TResult? Function()? startPage,
    TResult? Function()? nextPage,
    TResult? Function(String status)? setAttendanceStatus,
  }) {
    return getPresensi?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getPresensi,
    TResult Function()? startPage,
    TResult Function()? nextPage,
    TResult Function(String status)? setAttendanceStatus,
    required TResult orElse(),
  }) {
    if (getPresensi != null) {
      return getPresensi();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetPresensi value) getPresensi,
    required TResult Function(_StartPage value) startPage,
    required TResult Function(_NextPage value) nextPage,
    required TResult Function(_SetAttendanceStatus value) setAttendanceStatus,
  }) {
    return getPresensi(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetPresensi value)? getPresensi,
    TResult? Function(_StartPage value)? startPage,
    TResult? Function(_NextPage value)? nextPage,
    TResult? Function(_SetAttendanceStatus value)? setAttendanceStatus,
  }) {
    return getPresensi?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetPresensi value)? getPresensi,
    TResult Function(_StartPage value)? startPage,
    TResult Function(_NextPage value)? nextPage,
    TResult Function(_SetAttendanceStatus value)? setAttendanceStatus,
    required TResult orElse(),
  }) {
    if (getPresensi != null) {
      return getPresensi(this);
    }
    return orElse();
  }
}

abstract class _GetPresensi implements PresensiEvent {
  const factory _GetPresensi() = _$GetPresensiImpl;
}

/// @nodoc
abstract class _$$StartPageImplCopyWith<$Res> {
  factory _$$StartPageImplCopyWith(
          _$StartPageImpl value, $Res Function(_$StartPageImpl) then) =
      __$$StartPageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartPageImplCopyWithImpl<$Res>
    extends _$PresensiEventCopyWithImpl<$Res, _$StartPageImpl>
    implements _$$StartPageImplCopyWith<$Res> {
  __$$StartPageImplCopyWithImpl(
      _$StartPageImpl _value, $Res Function(_$StartPageImpl) _then)
      : super(_value, _then);

  /// Create a copy of PresensiEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartPageImpl implements _StartPage {
  const _$StartPageImpl();

  @override
  String toString() {
    return 'PresensiEvent.startPage()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartPageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getPresensi,
    required TResult Function() startPage,
    required TResult Function() nextPage,
    required TResult Function(String status) setAttendanceStatus,
  }) {
    return startPage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getPresensi,
    TResult? Function()? startPage,
    TResult? Function()? nextPage,
    TResult? Function(String status)? setAttendanceStatus,
  }) {
    return startPage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getPresensi,
    TResult Function()? startPage,
    TResult Function()? nextPage,
    TResult Function(String status)? setAttendanceStatus,
    required TResult orElse(),
  }) {
    if (startPage != null) {
      return startPage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetPresensi value) getPresensi,
    required TResult Function(_StartPage value) startPage,
    required TResult Function(_NextPage value) nextPage,
    required TResult Function(_SetAttendanceStatus value) setAttendanceStatus,
  }) {
    return startPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetPresensi value)? getPresensi,
    TResult? Function(_StartPage value)? startPage,
    TResult? Function(_NextPage value)? nextPage,
    TResult? Function(_SetAttendanceStatus value)? setAttendanceStatus,
  }) {
    return startPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetPresensi value)? getPresensi,
    TResult Function(_StartPage value)? startPage,
    TResult Function(_NextPage value)? nextPage,
    TResult Function(_SetAttendanceStatus value)? setAttendanceStatus,
    required TResult orElse(),
  }) {
    if (startPage != null) {
      return startPage(this);
    }
    return orElse();
  }
}

abstract class _StartPage implements PresensiEvent {
  const factory _StartPage() = _$StartPageImpl;
}

/// @nodoc
abstract class _$$NextPageImplCopyWith<$Res> {
  factory _$$NextPageImplCopyWith(
          _$NextPageImpl value, $Res Function(_$NextPageImpl) then) =
      __$$NextPageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NextPageImplCopyWithImpl<$Res>
    extends _$PresensiEventCopyWithImpl<$Res, _$NextPageImpl>
    implements _$$NextPageImplCopyWith<$Res> {
  __$$NextPageImplCopyWithImpl(
      _$NextPageImpl _value, $Res Function(_$NextPageImpl) _then)
      : super(_value, _then);

  /// Create a copy of PresensiEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NextPageImpl implements _NextPage {
  const _$NextPageImpl();

  @override
  String toString() {
    return 'PresensiEvent.nextPage()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NextPageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getPresensi,
    required TResult Function() startPage,
    required TResult Function() nextPage,
    required TResult Function(String status) setAttendanceStatus,
  }) {
    return nextPage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getPresensi,
    TResult? Function()? startPage,
    TResult? Function()? nextPage,
    TResult? Function(String status)? setAttendanceStatus,
  }) {
    return nextPage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getPresensi,
    TResult Function()? startPage,
    TResult Function()? nextPage,
    TResult Function(String status)? setAttendanceStatus,
    required TResult orElse(),
  }) {
    if (nextPage != null) {
      return nextPage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetPresensi value) getPresensi,
    required TResult Function(_StartPage value) startPage,
    required TResult Function(_NextPage value) nextPage,
    required TResult Function(_SetAttendanceStatus value) setAttendanceStatus,
  }) {
    return nextPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetPresensi value)? getPresensi,
    TResult? Function(_StartPage value)? startPage,
    TResult? Function(_NextPage value)? nextPage,
    TResult? Function(_SetAttendanceStatus value)? setAttendanceStatus,
  }) {
    return nextPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetPresensi value)? getPresensi,
    TResult Function(_StartPage value)? startPage,
    TResult Function(_NextPage value)? nextPage,
    TResult Function(_SetAttendanceStatus value)? setAttendanceStatus,
    required TResult orElse(),
  }) {
    if (nextPage != null) {
      return nextPage(this);
    }
    return orElse();
  }
}

abstract class _NextPage implements PresensiEvent {
  const factory _NextPage() = _$NextPageImpl;
}

/// @nodoc
abstract class _$$SetAttendanceStatusImplCopyWith<$Res> {
  factory _$$SetAttendanceStatusImplCopyWith(_$SetAttendanceStatusImpl value,
          $Res Function(_$SetAttendanceStatusImpl) then) =
      __$$SetAttendanceStatusImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String status});
}

/// @nodoc
class __$$SetAttendanceStatusImplCopyWithImpl<$Res>
    extends _$PresensiEventCopyWithImpl<$Res, _$SetAttendanceStatusImpl>
    implements _$$SetAttendanceStatusImplCopyWith<$Res> {
  __$$SetAttendanceStatusImplCopyWithImpl(_$SetAttendanceStatusImpl _value,
      $Res Function(_$SetAttendanceStatusImpl) _then)
      : super(_value, _then);

  /// Create a copy of PresensiEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$SetAttendanceStatusImpl(
      null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SetAttendanceStatusImpl implements _SetAttendanceStatus {
  const _$SetAttendanceStatusImpl(this.status);

  @override
  final String status;

  @override
  String toString() {
    return 'PresensiEvent.setAttendanceStatus(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetAttendanceStatusImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  /// Create a copy of PresensiEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetAttendanceStatusImplCopyWith<_$SetAttendanceStatusImpl> get copyWith =>
      __$$SetAttendanceStatusImplCopyWithImpl<_$SetAttendanceStatusImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getPresensi,
    required TResult Function() startPage,
    required TResult Function() nextPage,
    required TResult Function(String status) setAttendanceStatus,
  }) {
    return setAttendanceStatus(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getPresensi,
    TResult? Function()? startPage,
    TResult? Function()? nextPage,
    TResult? Function(String status)? setAttendanceStatus,
  }) {
    return setAttendanceStatus?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getPresensi,
    TResult Function()? startPage,
    TResult Function()? nextPage,
    TResult Function(String status)? setAttendanceStatus,
    required TResult orElse(),
  }) {
    if (setAttendanceStatus != null) {
      return setAttendanceStatus(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetPresensi value) getPresensi,
    required TResult Function(_StartPage value) startPage,
    required TResult Function(_NextPage value) nextPage,
    required TResult Function(_SetAttendanceStatus value) setAttendanceStatus,
  }) {
    return setAttendanceStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetPresensi value)? getPresensi,
    TResult? Function(_StartPage value)? startPage,
    TResult? Function(_NextPage value)? nextPage,
    TResult? Function(_SetAttendanceStatus value)? setAttendanceStatus,
  }) {
    return setAttendanceStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetPresensi value)? getPresensi,
    TResult Function(_StartPage value)? startPage,
    TResult Function(_NextPage value)? nextPage,
    TResult Function(_SetAttendanceStatus value)? setAttendanceStatus,
    required TResult orElse(),
  }) {
    if (setAttendanceStatus != null) {
      return setAttendanceStatus(this);
    }
    return orElse();
  }
}

abstract class _SetAttendanceStatus implements PresensiEvent {
  const factory _SetAttendanceStatus(final String status) =
      _$SetAttendanceStatusImpl;

  String get status;

  /// Create a copy of PresensiEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetAttendanceStatusImplCopyWith<_$SetAttendanceStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PresensiState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(PresensiResponse presensiResponse) loaded,
    required TResult Function(String message) error,
    required TResult Function(
            int page, String? attendanceStatus, String? errorMessage)
        page,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(PresensiResponse presensiResponse)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(int page, String? attendanceStatus, String? errorMessage)?
        page,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PresensiResponse presensiResponse)? loaded,
    TResult Function(String message)? error,
    TResult Function(int page, String? attendanceStatus, String? errorMessage)?
        page,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Page value) page,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Page value)? page,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Page value)? page,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PresensiStateCopyWith<$Res> {
  factory $PresensiStateCopyWith(
          PresensiState value, $Res Function(PresensiState) then) =
      _$PresensiStateCopyWithImpl<$Res, PresensiState>;
}

/// @nodoc
class _$PresensiStateCopyWithImpl<$Res, $Val extends PresensiState>
    implements $PresensiStateCopyWith<$Res> {
  _$PresensiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PresensiState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$PresensiStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of PresensiState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'PresensiState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(PresensiResponse presensiResponse) loaded,
    required TResult Function(String message) error,
    required TResult Function(
            int page, String? attendanceStatus, String? errorMessage)
        page,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(PresensiResponse presensiResponse)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(int page, String? attendanceStatus, String? errorMessage)?
        page,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PresensiResponse presensiResponse)? loaded,
    TResult Function(String message)? error,
    TResult Function(int page, String? attendanceStatus, String? errorMessage)?
        page,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Page value) page,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Page value)? page,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Page value)? page,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PresensiState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$PresensiStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of PresensiState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'PresensiState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(PresensiResponse presensiResponse) loaded,
    required TResult Function(String message) error,
    required TResult Function(
            int page, String? attendanceStatus, String? errorMessage)
        page,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(PresensiResponse presensiResponse)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(int page, String? attendanceStatus, String? errorMessage)?
        page,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PresensiResponse presensiResponse)? loaded,
    TResult Function(String message)? error,
    TResult Function(int page, String? attendanceStatus, String? errorMessage)?
        page,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Page value) page,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Page value)? page,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Page value)? page,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements PresensiState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PresensiResponse presensiResponse});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$PresensiStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of PresensiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? presensiResponse = null,
  }) {
    return _then(_$LoadedImpl(
      presensiResponse: null == presensiResponse
          ? _value.presensiResponse
          : presensiResponse // ignore: cast_nullable_to_non_nullable
              as PresensiResponse,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl({required this.presensiResponse});

  @override
  final PresensiResponse presensiResponse;

  @override
  String toString() {
    return 'PresensiState.loaded(presensiResponse: $presensiResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            (identical(other.presensiResponse, presensiResponse) ||
                other.presensiResponse == presensiResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, presensiResponse);

  /// Create a copy of PresensiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(PresensiResponse presensiResponse) loaded,
    required TResult Function(String message) error,
    required TResult Function(
            int page, String? attendanceStatus, String? errorMessage)
        page,
  }) {
    return loaded(presensiResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(PresensiResponse presensiResponse)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(int page, String? attendanceStatus, String? errorMessage)?
        page,
  }) {
    return loaded?.call(presensiResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PresensiResponse presensiResponse)? loaded,
    TResult Function(String message)? error,
    TResult Function(int page, String? attendanceStatus, String? errorMessage)?
        page,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(presensiResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Page value) page,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Page value)? page,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Page value)? page,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements PresensiState {
  const factory _Loaded({required final PresensiResponse presensiResponse}) =
      _$LoadedImpl;

  PresensiResponse get presensiResponse;

  /// Create a copy of PresensiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$PresensiStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of PresensiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'PresensiState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of PresensiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(PresensiResponse presensiResponse) loaded,
    required TResult Function(String message) error,
    required TResult Function(
            int page, String? attendanceStatus, String? errorMessage)
        page,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(PresensiResponse presensiResponse)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(int page, String? attendanceStatus, String? errorMessage)?
        page,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PresensiResponse presensiResponse)? loaded,
    TResult Function(String message)? error,
    TResult Function(int page, String? attendanceStatus, String? errorMessage)?
        page,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Page value) page,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Page value)? page,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Page value)? page,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements PresensiState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;

  /// Create a copy of PresensiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PageImplCopyWith<$Res> {
  factory _$$PageImplCopyWith(
          _$PageImpl value, $Res Function(_$PageImpl) then) =
      __$$PageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int page, String? attendanceStatus, String? errorMessage});
}

/// @nodoc
class __$$PageImplCopyWithImpl<$Res>
    extends _$PresensiStateCopyWithImpl<$Res, _$PageImpl>
    implements _$$PageImplCopyWith<$Res> {
  __$$PageImplCopyWithImpl(_$PageImpl _value, $Res Function(_$PageImpl) _then)
      : super(_value, _then);

  /// Create a copy of PresensiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? attendanceStatus = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$PageImpl(
      null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      freezed == attendanceStatus
          ? _value.attendanceStatus
          : attendanceStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PageImpl implements _Page {
  const _$PageImpl(this.page, this.attendanceStatus, this.errorMessage);

  @override
  final int page;
  @override
  final String? attendanceStatus;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'PresensiState.page(page: $page, attendanceStatus: $attendanceStatus, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PageImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.attendanceStatus, attendanceStatus) ||
                other.attendanceStatus == attendanceStatus) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, page, attendanceStatus, errorMessage);

  /// Create a copy of PresensiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PageImplCopyWith<_$PageImpl> get copyWith =>
      __$$PageImplCopyWithImpl<_$PageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(PresensiResponse presensiResponse) loaded,
    required TResult Function(String message) error,
    required TResult Function(
            int page, String? attendanceStatus, String? errorMessage)
        page,
  }) {
    return page(this.page, attendanceStatus, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(PresensiResponse presensiResponse)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(int page, String? attendanceStatus, String? errorMessage)?
        page,
  }) {
    return page?.call(this.page, attendanceStatus, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PresensiResponse presensiResponse)? loaded,
    TResult Function(String message)? error,
    TResult Function(int page, String? attendanceStatus, String? errorMessage)?
        page,
    required TResult orElse(),
  }) {
    if (page != null) {
      return page(this.page, attendanceStatus, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Page value) page,
  }) {
    return page(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Page value)? page,
  }) {
    return page?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Page value)? page,
    required TResult orElse(),
  }) {
    if (page != null) {
      return page(this);
    }
    return orElse();
  }
}

abstract class _Page implements PresensiState {
  const factory _Page(final int page, final String? attendanceStatus,
      final String? errorMessage) = _$PageImpl;

  int get page;
  String? get attendanceStatus;
  String? get errorMessage;

  /// Create a copy of PresensiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PageImplCopyWith<_$PageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
