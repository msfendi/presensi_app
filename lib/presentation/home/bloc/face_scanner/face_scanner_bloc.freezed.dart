// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'face_scanner_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FaceScannerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadCamera,
    required TResult Function() disposeCamera,
    required TResult Function(File imageFile) faceDetected,
    required TResult Function() showLoaderDialog,
    required TResult Function() handleLocationPermission,
    required TResult Function(InputImage inputImage) processImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loadCamera,
    TResult? Function()? disposeCamera,
    TResult? Function(File imageFile)? faceDetected,
    TResult? Function()? showLoaderDialog,
    TResult? Function()? handleLocationPermission,
    TResult? Function(InputImage inputImage)? processImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadCamera,
    TResult Function()? disposeCamera,
    TResult Function(File imageFile)? faceDetected,
    TResult Function()? showLoaderDialog,
    TResult Function()? handleLocationPermission,
    TResult Function(InputImage inputImage)? processImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadCamera value) loadCamera,
    required TResult Function(_DisposeCamera value) disposeCamera,
    required TResult Function(_FaceDetected value) faceDetected,
    required TResult Function(_ShowLoaderDialog value) showLoaderDialog,
    required TResult Function(_HandleLocationPermission value)
        handleLocationPermission,
    required TResult Function(_ProcessImage value) processImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadCamera value)? loadCamera,
    TResult? Function(_DisposeCamera value)? disposeCamera,
    TResult? Function(_FaceDetected value)? faceDetected,
    TResult? Function(_ShowLoaderDialog value)? showLoaderDialog,
    TResult? Function(_HandleLocationPermission value)?
        handleLocationPermission,
    TResult? Function(_ProcessImage value)? processImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadCamera value)? loadCamera,
    TResult Function(_DisposeCamera value)? disposeCamera,
    TResult Function(_FaceDetected value)? faceDetected,
    TResult Function(_ShowLoaderDialog value)? showLoaderDialog,
    TResult Function(_HandleLocationPermission value)? handleLocationPermission,
    TResult Function(_ProcessImage value)? processImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FaceScannerEventCopyWith<$Res> {
  factory $FaceScannerEventCopyWith(
          FaceScannerEvent value, $Res Function(FaceScannerEvent) then) =
      _$FaceScannerEventCopyWithImpl<$Res, FaceScannerEvent>;
}

/// @nodoc
class _$FaceScannerEventCopyWithImpl<$Res, $Val extends FaceScannerEvent>
    implements $FaceScannerEventCopyWith<$Res> {
  _$FaceScannerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FaceScannerEvent
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
    extends _$FaceScannerEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of FaceScannerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'FaceScannerEvent.started()';
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
    required TResult Function() loadCamera,
    required TResult Function() disposeCamera,
    required TResult Function(File imageFile) faceDetected,
    required TResult Function() showLoaderDialog,
    required TResult Function() handleLocationPermission,
    required TResult Function(InputImage inputImage) processImage,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loadCamera,
    TResult? Function()? disposeCamera,
    TResult? Function(File imageFile)? faceDetected,
    TResult? Function()? showLoaderDialog,
    TResult? Function()? handleLocationPermission,
    TResult? Function(InputImage inputImage)? processImage,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadCamera,
    TResult Function()? disposeCamera,
    TResult Function(File imageFile)? faceDetected,
    TResult Function()? showLoaderDialog,
    TResult Function()? handleLocationPermission,
    TResult Function(InputImage inputImage)? processImage,
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
    required TResult Function(_LoadCamera value) loadCamera,
    required TResult Function(_DisposeCamera value) disposeCamera,
    required TResult Function(_FaceDetected value) faceDetected,
    required TResult Function(_ShowLoaderDialog value) showLoaderDialog,
    required TResult Function(_HandleLocationPermission value)
        handleLocationPermission,
    required TResult Function(_ProcessImage value) processImage,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadCamera value)? loadCamera,
    TResult? Function(_DisposeCamera value)? disposeCamera,
    TResult? Function(_FaceDetected value)? faceDetected,
    TResult? Function(_ShowLoaderDialog value)? showLoaderDialog,
    TResult? Function(_HandleLocationPermission value)?
        handleLocationPermission,
    TResult? Function(_ProcessImage value)? processImage,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadCamera value)? loadCamera,
    TResult Function(_DisposeCamera value)? disposeCamera,
    TResult Function(_FaceDetected value)? faceDetected,
    TResult Function(_ShowLoaderDialog value)? showLoaderDialog,
    TResult Function(_HandleLocationPermission value)? handleLocationPermission,
    TResult Function(_ProcessImage value)? processImage,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements FaceScannerEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$LoadCameraImplCopyWith<$Res> {
  factory _$$LoadCameraImplCopyWith(
          _$LoadCameraImpl value, $Res Function(_$LoadCameraImpl) then) =
      __$$LoadCameraImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadCameraImplCopyWithImpl<$Res>
    extends _$FaceScannerEventCopyWithImpl<$Res, _$LoadCameraImpl>
    implements _$$LoadCameraImplCopyWith<$Res> {
  __$$LoadCameraImplCopyWithImpl(
      _$LoadCameraImpl _value, $Res Function(_$LoadCameraImpl) _then)
      : super(_value, _then);

  /// Create a copy of FaceScannerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadCameraImpl implements _LoadCamera {
  const _$LoadCameraImpl();

  @override
  String toString() {
    return 'FaceScannerEvent.loadCamera()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadCameraImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadCamera,
    required TResult Function() disposeCamera,
    required TResult Function(File imageFile) faceDetected,
    required TResult Function() showLoaderDialog,
    required TResult Function() handleLocationPermission,
    required TResult Function(InputImage inputImage) processImage,
  }) {
    return loadCamera();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loadCamera,
    TResult? Function()? disposeCamera,
    TResult? Function(File imageFile)? faceDetected,
    TResult? Function()? showLoaderDialog,
    TResult? Function()? handleLocationPermission,
    TResult? Function(InputImage inputImage)? processImage,
  }) {
    return loadCamera?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadCamera,
    TResult Function()? disposeCamera,
    TResult Function(File imageFile)? faceDetected,
    TResult Function()? showLoaderDialog,
    TResult Function()? handleLocationPermission,
    TResult Function(InputImage inputImage)? processImage,
    required TResult orElse(),
  }) {
    if (loadCamera != null) {
      return loadCamera();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadCamera value) loadCamera,
    required TResult Function(_DisposeCamera value) disposeCamera,
    required TResult Function(_FaceDetected value) faceDetected,
    required TResult Function(_ShowLoaderDialog value) showLoaderDialog,
    required TResult Function(_HandleLocationPermission value)
        handleLocationPermission,
    required TResult Function(_ProcessImage value) processImage,
  }) {
    return loadCamera(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadCamera value)? loadCamera,
    TResult? Function(_DisposeCamera value)? disposeCamera,
    TResult? Function(_FaceDetected value)? faceDetected,
    TResult? Function(_ShowLoaderDialog value)? showLoaderDialog,
    TResult? Function(_HandleLocationPermission value)?
        handleLocationPermission,
    TResult? Function(_ProcessImage value)? processImage,
  }) {
    return loadCamera?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadCamera value)? loadCamera,
    TResult Function(_DisposeCamera value)? disposeCamera,
    TResult Function(_FaceDetected value)? faceDetected,
    TResult Function(_ShowLoaderDialog value)? showLoaderDialog,
    TResult Function(_HandleLocationPermission value)? handleLocationPermission,
    TResult Function(_ProcessImage value)? processImage,
    required TResult orElse(),
  }) {
    if (loadCamera != null) {
      return loadCamera(this);
    }
    return orElse();
  }
}

abstract class _LoadCamera implements FaceScannerEvent {
  const factory _LoadCamera() = _$LoadCameraImpl;
}

/// @nodoc
abstract class _$$DisposeCameraImplCopyWith<$Res> {
  factory _$$DisposeCameraImplCopyWith(
          _$DisposeCameraImpl value, $Res Function(_$DisposeCameraImpl) then) =
      __$$DisposeCameraImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DisposeCameraImplCopyWithImpl<$Res>
    extends _$FaceScannerEventCopyWithImpl<$Res, _$DisposeCameraImpl>
    implements _$$DisposeCameraImplCopyWith<$Res> {
  __$$DisposeCameraImplCopyWithImpl(
      _$DisposeCameraImpl _value, $Res Function(_$DisposeCameraImpl) _then)
      : super(_value, _then);

  /// Create a copy of FaceScannerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DisposeCameraImpl implements _DisposeCamera {
  const _$DisposeCameraImpl();

  @override
  String toString() {
    return 'FaceScannerEvent.disposeCamera()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DisposeCameraImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadCamera,
    required TResult Function() disposeCamera,
    required TResult Function(File imageFile) faceDetected,
    required TResult Function() showLoaderDialog,
    required TResult Function() handleLocationPermission,
    required TResult Function(InputImage inputImage) processImage,
  }) {
    return disposeCamera();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loadCamera,
    TResult? Function()? disposeCamera,
    TResult? Function(File imageFile)? faceDetected,
    TResult? Function()? showLoaderDialog,
    TResult? Function()? handleLocationPermission,
    TResult? Function(InputImage inputImage)? processImage,
  }) {
    return disposeCamera?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadCamera,
    TResult Function()? disposeCamera,
    TResult Function(File imageFile)? faceDetected,
    TResult Function()? showLoaderDialog,
    TResult Function()? handleLocationPermission,
    TResult Function(InputImage inputImage)? processImage,
    required TResult orElse(),
  }) {
    if (disposeCamera != null) {
      return disposeCamera();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadCamera value) loadCamera,
    required TResult Function(_DisposeCamera value) disposeCamera,
    required TResult Function(_FaceDetected value) faceDetected,
    required TResult Function(_ShowLoaderDialog value) showLoaderDialog,
    required TResult Function(_HandleLocationPermission value)
        handleLocationPermission,
    required TResult Function(_ProcessImage value) processImage,
  }) {
    return disposeCamera(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadCamera value)? loadCamera,
    TResult? Function(_DisposeCamera value)? disposeCamera,
    TResult? Function(_FaceDetected value)? faceDetected,
    TResult? Function(_ShowLoaderDialog value)? showLoaderDialog,
    TResult? Function(_HandleLocationPermission value)?
        handleLocationPermission,
    TResult? Function(_ProcessImage value)? processImage,
  }) {
    return disposeCamera?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadCamera value)? loadCamera,
    TResult Function(_DisposeCamera value)? disposeCamera,
    TResult Function(_FaceDetected value)? faceDetected,
    TResult Function(_ShowLoaderDialog value)? showLoaderDialog,
    TResult Function(_HandleLocationPermission value)? handleLocationPermission,
    TResult Function(_ProcessImage value)? processImage,
    required TResult orElse(),
  }) {
    if (disposeCamera != null) {
      return disposeCamera(this);
    }
    return orElse();
  }
}

abstract class _DisposeCamera implements FaceScannerEvent {
  const factory _DisposeCamera() = _$DisposeCameraImpl;
}

/// @nodoc
abstract class _$$FaceDetectedImplCopyWith<$Res> {
  factory _$$FaceDetectedImplCopyWith(
          _$FaceDetectedImpl value, $Res Function(_$FaceDetectedImpl) then) =
      __$$FaceDetectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({File imageFile});
}

/// @nodoc
class __$$FaceDetectedImplCopyWithImpl<$Res>
    extends _$FaceScannerEventCopyWithImpl<$Res, _$FaceDetectedImpl>
    implements _$$FaceDetectedImplCopyWith<$Res> {
  __$$FaceDetectedImplCopyWithImpl(
      _$FaceDetectedImpl _value, $Res Function(_$FaceDetectedImpl) _then)
      : super(_value, _then);

  /// Create a copy of FaceScannerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageFile = null,
  }) {
    return _then(_$FaceDetectedImpl(
      null == imageFile
          ? _value.imageFile
          : imageFile // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$FaceDetectedImpl implements _FaceDetected {
  const _$FaceDetectedImpl(this.imageFile);

  @override
  final File imageFile;

  @override
  String toString() {
    return 'FaceScannerEvent.faceDetected(imageFile: $imageFile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FaceDetectedImpl &&
            (identical(other.imageFile, imageFile) ||
                other.imageFile == imageFile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imageFile);

  /// Create a copy of FaceScannerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FaceDetectedImplCopyWith<_$FaceDetectedImpl> get copyWith =>
      __$$FaceDetectedImplCopyWithImpl<_$FaceDetectedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadCamera,
    required TResult Function() disposeCamera,
    required TResult Function(File imageFile) faceDetected,
    required TResult Function() showLoaderDialog,
    required TResult Function() handleLocationPermission,
    required TResult Function(InputImage inputImage) processImage,
  }) {
    return faceDetected(imageFile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loadCamera,
    TResult? Function()? disposeCamera,
    TResult? Function(File imageFile)? faceDetected,
    TResult? Function()? showLoaderDialog,
    TResult? Function()? handleLocationPermission,
    TResult? Function(InputImage inputImage)? processImage,
  }) {
    return faceDetected?.call(imageFile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadCamera,
    TResult Function()? disposeCamera,
    TResult Function(File imageFile)? faceDetected,
    TResult Function()? showLoaderDialog,
    TResult Function()? handleLocationPermission,
    TResult Function(InputImage inputImage)? processImage,
    required TResult orElse(),
  }) {
    if (faceDetected != null) {
      return faceDetected(imageFile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadCamera value) loadCamera,
    required TResult Function(_DisposeCamera value) disposeCamera,
    required TResult Function(_FaceDetected value) faceDetected,
    required TResult Function(_ShowLoaderDialog value) showLoaderDialog,
    required TResult Function(_HandleLocationPermission value)
        handleLocationPermission,
    required TResult Function(_ProcessImage value) processImage,
  }) {
    return faceDetected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadCamera value)? loadCamera,
    TResult? Function(_DisposeCamera value)? disposeCamera,
    TResult? Function(_FaceDetected value)? faceDetected,
    TResult? Function(_ShowLoaderDialog value)? showLoaderDialog,
    TResult? Function(_HandleLocationPermission value)?
        handleLocationPermission,
    TResult? Function(_ProcessImage value)? processImage,
  }) {
    return faceDetected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadCamera value)? loadCamera,
    TResult Function(_DisposeCamera value)? disposeCamera,
    TResult Function(_FaceDetected value)? faceDetected,
    TResult Function(_ShowLoaderDialog value)? showLoaderDialog,
    TResult Function(_HandleLocationPermission value)? handleLocationPermission,
    TResult Function(_ProcessImage value)? processImage,
    required TResult orElse(),
  }) {
    if (faceDetected != null) {
      return faceDetected(this);
    }
    return orElse();
  }
}

abstract class _FaceDetected implements FaceScannerEvent {
  const factory _FaceDetected(final File imageFile) = _$FaceDetectedImpl;

  File get imageFile;

  /// Create a copy of FaceScannerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FaceDetectedImplCopyWith<_$FaceDetectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShowLoaderDialogImplCopyWith<$Res> {
  factory _$$ShowLoaderDialogImplCopyWith(_$ShowLoaderDialogImpl value,
          $Res Function(_$ShowLoaderDialogImpl) then) =
      __$$ShowLoaderDialogImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShowLoaderDialogImplCopyWithImpl<$Res>
    extends _$FaceScannerEventCopyWithImpl<$Res, _$ShowLoaderDialogImpl>
    implements _$$ShowLoaderDialogImplCopyWith<$Res> {
  __$$ShowLoaderDialogImplCopyWithImpl(_$ShowLoaderDialogImpl _value,
      $Res Function(_$ShowLoaderDialogImpl) _then)
      : super(_value, _then);

  /// Create a copy of FaceScannerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ShowLoaderDialogImpl implements _ShowLoaderDialog {
  const _$ShowLoaderDialogImpl();

  @override
  String toString() {
    return 'FaceScannerEvent.showLoaderDialog()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ShowLoaderDialogImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadCamera,
    required TResult Function() disposeCamera,
    required TResult Function(File imageFile) faceDetected,
    required TResult Function() showLoaderDialog,
    required TResult Function() handleLocationPermission,
    required TResult Function(InputImage inputImage) processImage,
  }) {
    return showLoaderDialog();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loadCamera,
    TResult? Function()? disposeCamera,
    TResult? Function(File imageFile)? faceDetected,
    TResult? Function()? showLoaderDialog,
    TResult? Function()? handleLocationPermission,
    TResult? Function(InputImage inputImage)? processImage,
  }) {
    return showLoaderDialog?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadCamera,
    TResult Function()? disposeCamera,
    TResult Function(File imageFile)? faceDetected,
    TResult Function()? showLoaderDialog,
    TResult Function()? handleLocationPermission,
    TResult Function(InputImage inputImage)? processImage,
    required TResult orElse(),
  }) {
    if (showLoaderDialog != null) {
      return showLoaderDialog();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadCamera value) loadCamera,
    required TResult Function(_DisposeCamera value) disposeCamera,
    required TResult Function(_FaceDetected value) faceDetected,
    required TResult Function(_ShowLoaderDialog value) showLoaderDialog,
    required TResult Function(_HandleLocationPermission value)
        handleLocationPermission,
    required TResult Function(_ProcessImage value) processImage,
  }) {
    return showLoaderDialog(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadCamera value)? loadCamera,
    TResult? Function(_DisposeCamera value)? disposeCamera,
    TResult? Function(_FaceDetected value)? faceDetected,
    TResult? Function(_ShowLoaderDialog value)? showLoaderDialog,
    TResult? Function(_HandleLocationPermission value)?
        handleLocationPermission,
    TResult? Function(_ProcessImage value)? processImage,
  }) {
    return showLoaderDialog?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadCamera value)? loadCamera,
    TResult Function(_DisposeCamera value)? disposeCamera,
    TResult Function(_FaceDetected value)? faceDetected,
    TResult Function(_ShowLoaderDialog value)? showLoaderDialog,
    TResult Function(_HandleLocationPermission value)? handleLocationPermission,
    TResult Function(_ProcessImage value)? processImage,
    required TResult orElse(),
  }) {
    if (showLoaderDialog != null) {
      return showLoaderDialog(this);
    }
    return orElse();
  }
}

abstract class _ShowLoaderDialog implements FaceScannerEvent {
  const factory _ShowLoaderDialog() = _$ShowLoaderDialogImpl;
}

/// @nodoc
abstract class _$$HandleLocationPermissionImplCopyWith<$Res> {
  factory _$$HandleLocationPermissionImplCopyWith(
          _$HandleLocationPermissionImpl value,
          $Res Function(_$HandleLocationPermissionImpl) then) =
      __$$HandleLocationPermissionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HandleLocationPermissionImplCopyWithImpl<$Res>
    extends _$FaceScannerEventCopyWithImpl<$Res, _$HandleLocationPermissionImpl>
    implements _$$HandleLocationPermissionImplCopyWith<$Res> {
  __$$HandleLocationPermissionImplCopyWithImpl(
      _$HandleLocationPermissionImpl _value,
      $Res Function(_$HandleLocationPermissionImpl) _then)
      : super(_value, _then);

  /// Create a copy of FaceScannerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$HandleLocationPermissionImpl implements _HandleLocationPermission {
  const _$HandleLocationPermissionImpl();

  @override
  String toString() {
    return 'FaceScannerEvent.handleLocationPermission()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HandleLocationPermissionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadCamera,
    required TResult Function() disposeCamera,
    required TResult Function(File imageFile) faceDetected,
    required TResult Function() showLoaderDialog,
    required TResult Function() handleLocationPermission,
    required TResult Function(InputImage inputImage) processImage,
  }) {
    return handleLocationPermission();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loadCamera,
    TResult? Function()? disposeCamera,
    TResult? Function(File imageFile)? faceDetected,
    TResult? Function()? showLoaderDialog,
    TResult? Function()? handleLocationPermission,
    TResult? Function(InputImage inputImage)? processImage,
  }) {
    return handleLocationPermission?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadCamera,
    TResult Function()? disposeCamera,
    TResult Function(File imageFile)? faceDetected,
    TResult Function()? showLoaderDialog,
    TResult Function()? handleLocationPermission,
    TResult Function(InputImage inputImage)? processImage,
    required TResult orElse(),
  }) {
    if (handleLocationPermission != null) {
      return handleLocationPermission();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadCamera value) loadCamera,
    required TResult Function(_DisposeCamera value) disposeCamera,
    required TResult Function(_FaceDetected value) faceDetected,
    required TResult Function(_ShowLoaderDialog value) showLoaderDialog,
    required TResult Function(_HandleLocationPermission value)
        handleLocationPermission,
    required TResult Function(_ProcessImage value) processImage,
  }) {
    return handleLocationPermission(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadCamera value)? loadCamera,
    TResult? Function(_DisposeCamera value)? disposeCamera,
    TResult? Function(_FaceDetected value)? faceDetected,
    TResult? Function(_ShowLoaderDialog value)? showLoaderDialog,
    TResult? Function(_HandleLocationPermission value)?
        handleLocationPermission,
    TResult? Function(_ProcessImage value)? processImage,
  }) {
    return handleLocationPermission?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadCamera value)? loadCamera,
    TResult Function(_DisposeCamera value)? disposeCamera,
    TResult Function(_FaceDetected value)? faceDetected,
    TResult Function(_ShowLoaderDialog value)? showLoaderDialog,
    TResult Function(_HandleLocationPermission value)? handleLocationPermission,
    TResult Function(_ProcessImage value)? processImage,
    required TResult orElse(),
  }) {
    if (handleLocationPermission != null) {
      return handleLocationPermission(this);
    }
    return orElse();
  }
}

abstract class _HandleLocationPermission implements FaceScannerEvent {
  const factory _HandleLocationPermission() = _$HandleLocationPermissionImpl;
}

/// @nodoc
abstract class _$$ProcessImageImplCopyWith<$Res> {
  factory _$$ProcessImageImplCopyWith(
          _$ProcessImageImpl value, $Res Function(_$ProcessImageImpl) then) =
      __$$ProcessImageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({InputImage inputImage});
}

/// @nodoc
class __$$ProcessImageImplCopyWithImpl<$Res>
    extends _$FaceScannerEventCopyWithImpl<$Res, _$ProcessImageImpl>
    implements _$$ProcessImageImplCopyWith<$Res> {
  __$$ProcessImageImplCopyWithImpl(
      _$ProcessImageImpl _value, $Res Function(_$ProcessImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of FaceScannerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inputImage = null,
  }) {
    return _then(_$ProcessImageImpl(
      null == inputImage
          ? _value.inputImage
          : inputImage // ignore: cast_nullable_to_non_nullable
              as InputImage,
    ));
  }
}

/// @nodoc

class _$ProcessImageImpl implements _ProcessImage {
  const _$ProcessImageImpl(this.inputImage);

  @override
  final InputImage inputImage;

  @override
  String toString() {
    return 'FaceScannerEvent.processImage(inputImage: $inputImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProcessImageImpl &&
            (identical(other.inputImage, inputImage) ||
                other.inputImage == inputImage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, inputImage);

  /// Create a copy of FaceScannerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProcessImageImplCopyWith<_$ProcessImageImpl> get copyWith =>
      __$$ProcessImageImplCopyWithImpl<_$ProcessImageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadCamera,
    required TResult Function() disposeCamera,
    required TResult Function(File imageFile) faceDetected,
    required TResult Function() showLoaderDialog,
    required TResult Function() handleLocationPermission,
    required TResult Function(InputImage inputImage) processImage,
  }) {
    return processImage(inputImage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loadCamera,
    TResult? Function()? disposeCamera,
    TResult? Function(File imageFile)? faceDetected,
    TResult? Function()? showLoaderDialog,
    TResult? Function()? handleLocationPermission,
    TResult? Function(InputImage inputImage)? processImage,
  }) {
    return processImage?.call(inputImage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadCamera,
    TResult Function()? disposeCamera,
    TResult Function(File imageFile)? faceDetected,
    TResult Function()? showLoaderDialog,
    TResult Function()? handleLocationPermission,
    TResult Function(InputImage inputImage)? processImage,
    required TResult orElse(),
  }) {
    if (processImage != null) {
      return processImage(inputImage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadCamera value) loadCamera,
    required TResult Function(_DisposeCamera value) disposeCamera,
    required TResult Function(_FaceDetected value) faceDetected,
    required TResult Function(_ShowLoaderDialog value) showLoaderDialog,
    required TResult Function(_HandleLocationPermission value)
        handleLocationPermission,
    required TResult Function(_ProcessImage value) processImage,
  }) {
    return processImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadCamera value)? loadCamera,
    TResult? Function(_DisposeCamera value)? disposeCamera,
    TResult? Function(_FaceDetected value)? faceDetected,
    TResult? Function(_ShowLoaderDialog value)? showLoaderDialog,
    TResult? Function(_HandleLocationPermission value)?
        handleLocationPermission,
    TResult? Function(_ProcessImage value)? processImage,
  }) {
    return processImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadCamera value)? loadCamera,
    TResult Function(_DisposeCamera value)? disposeCamera,
    TResult Function(_FaceDetected value)? faceDetected,
    TResult Function(_ShowLoaderDialog value)? showLoaderDialog,
    TResult Function(_HandleLocationPermission value)? handleLocationPermission,
    TResult Function(_ProcessImage value)? processImage,
    required TResult orElse(),
  }) {
    if (processImage != null) {
      return processImage(this);
    }
    return orElse();
  }
}

abstract class _ProcessImage implements FaceScannerEvent {
  const factory _ProcessImage(final InputImage inputImage) = _$ProcessImageImpl;

  InputImage get inputImage;

  /// Create a copy of FaceScannerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProcessImageImplCopyWith<_$ProcessImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FaceScannerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CameraController controller) initialCamera,
    required TResult Function(CameraController controller) cameraReady,
    required TResult Function(Recognition recognitions) loaded,
    required TResult Function(String message) registeredFace,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CameraController controller)? initialCamera,
    TResult? Function(CameraController controller)? cameraReady,
    TResult? Function(Recognition recognitions)? loaded,
    TResult? Function(String message)? registeredFace,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CameraController controller)? initialCamera,
    TResult Function(CameraController controller)? cameraReady,
    TResult Function(Recognition recognitions)? loaded,
    TResult Function(String message)? registeredFace,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_InitialCamera value) initialCamera,
    required TResult Function(_CameraReady value) cameraReady,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_RegisterFace value) registeredFace,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_InitialCamera value)? initialCamera,
    TResult? Function(_CameraReady value)? cameraReady,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_RegisterFace value)? registeredFace,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_InitialCamera value)? initialCamera,
    TResult Function(_CameraReady value)? cameraReady,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_RegisterFace value)? registeredFace,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FaceScannerStateCopyWith<$Res> {
  factory $FaceScannerStateCopyWith(
          FaceScannerState value, $Res Function(FaceScannerState) then) =
      _$FaceScannerStateCopyWithImpl<$Res, FaceScannerState>;
}

/// @nodoc
class _$FaceScannerStateCopyWithImpl<$Res, $Val extends FaceScannerState>
    implements $FaceScannerStateCopyWith<$Res> {
  _$FaceScannerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FaceScannerState
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
    extends _$FaceScannerStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of FaceScannerState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'FaceScannerState.initial()';
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
    required TResult Function(CameraController controller) initialCamera,
    required TResult Function(CameraController controller) cameraReady,
    required TResult Function(Recognition recognitions) loaded,
    required TResult Function(String message) registeredFace,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CameraController controller)? initialCamera,
    TResult? Function(CameraController controller)? cameraReady,
    TResult? Function(Recognition recognitions)? loaded,
    TResult? Function(String message)? registeredFace,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CameraController controller)? initialCamera,
    TResult Function(CameraController controller)? cameraReady,
    TResult Function(Recognition recognitions)? loaded,
    TResult Function(String message)? registeredFace,
    TResult Function(String message)? error,
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
    required TResult Function(_InitialCamera value) initialCamera,
    required TResult Function(_CameraReady value) cameraReady,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_RegisterFace value) registeredFace,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_InitialCamera value)? initialCamera,
    TResult? Function(_CameraReady value)? cameraReady,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_RegisterFace value)? registeredFace,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_InitialCamera value)? initialCamera,
    TResult Function(_CameraReady value)? cameraReady,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_RegisterFace value)? registeredFace,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements FaceScannerState {
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
    extends _$FaceScannerStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of FaceScannerState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'FaceScannerState.loading()';
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
    required TResult Function(CameraController controller) initialCamera,
    required TResult Function(CameraController controller) cameraReady,
    required TResult Function(Recognition recognitions) loaded,
    required TResult Function(String message) registeredFace,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CameraController controller)? initialCamera,
    TResult? Function(CameraController controller)? cameraReady,
    TResult? Function(Recognition recognitions)? loaded,
    TResult? Function(String message)? registeredFace,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CameraController controller)? initialCamera,
    TResult Function(CameraController controller)? cameraReady,
    TResult Function(Recognition recognitions)? loaded,
    TResult Function(String message)? registeredFace,
    TResult Function(String message)? error,
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
    required TResult Function(_InitialCamera value) initialCamera,
    required TResult Function(_CameraReady value) cameraReady,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_RegisterFace value) registeredFace,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_InitialCamera value)? initialCamera,
    TResult? Function(_CameraReady value)? cameraReady,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_RegisterFace value)? registeredFace,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_InitialCamera value)? initialCamera,
    TResult Function(_CameraReady value)? cameraReady,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_RegisterFace value)? registeredFace,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements FaceScannerState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$InitialCameraImplCopyWith<$Res> {
  factory _$$InitialCameraImplCopyWith(
          _$InitialCameraImpl value, $Res Function(_$InitialCameraImpl) then) =
      __$$InitialCameraImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CameraController controller});
}

/// @nodoc
class __$$InitialCameraImplCopyWithImpl<$Res>
    extends _$FaceScannerStateCopyWithImpl<$Res, _$InitialCameraImpl>
    implements _$$InitialCameraImplCopyWith<$Res> {
  __$$InitialCameraImplCopyWithImpl(
      _$InitialCameraImpl _value, $Res Function(_$InitialCameraImpl) _then)
      : super(_value, _then);

  /// Create a copy of FaceScannerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? controller = null,
  }) {
    return _then(_$InitialCameraImpl(
      null == controller
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as CameraController,
    ));
  }
}

/// @nodoc

class _$InitialCameraImpl implements _InitialCamera {
  const _$InitialCameraImpl(this.controller);

  @override
  final CameraController controller;

  @override
  String toString() {
    return 'FaceScannerState.initialCamera(controller: $controller)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialCameraImpl &&
            (identical(other.controller, controller) ||
                other.controller == controller));
  }

  @override
  int get hashCode => Object.hash(runtimeType, controller);

  /// Create a copy of FaceScannerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialCameraImplCopyWith<_$InitialCameraImpl> get copyWith =>
      __$$InitialCameraImplCopyWithImpl<_$InitialCameraImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CameraController controller) initialCamera,
    required TResult Function(CameraController controller) cameraReady,
    required TResult Function(Recognition recognitions) loaded,
    required TResult Function(String message) registeredFace,
    required TResult Function(String message) error,
  }) {
    return initialCamera(controller);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CameraController controller)? initialCamera,
    TResult? Function(CameraController controller)? cameraReady,
    TResult? Function(Recognition recognitions)? loaded,
    TResult? Function(String message)? registeredFace,
    TResult? Function(String message)? error,
  }) {
    return initialCamera?.call(controller);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CameraController controller)? initialCamera,
    TResult Function(CameraController controller)? cameraReady,
    TResult Function(Recognition recognitions)? loaded,
    TResult Function(String message)? registeredFace,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initialCamera != null) {
      return initialCamera(controller);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_InitialCamera value) initialCamera,
    required TResult Function(_CameraReady value) cameraReady,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_RegisterFace value) registeredFace,
    required TResult Function(_Error value) error,
  }) {
    return initialCamera(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_InitialCamera value)? initialCamera,
    TResult? Function(_CameraReady value)? cameraReady,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_RegisterFace value)? registeredFace,
    TResult? Function(_Error value)? error,
  }) {
    return initialCamera?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_InitialCamera value)? initialCamera,
    TResult Function(_CameraReady value)? cameraReady,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_RegisterFace value)? registeredFace,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initialCamera != null) {
      return initialCamera(this);
    }
    return orElse();
  }
}

abstract class _InitialCamera implements FaceScannerState {
  const factory _InitialCamera(final CameraController controller) =
      _$InitialCameraImpl;

  CameraController get controller;

  /// Create a copy of FaceScannerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialCameraImplCopyWith<_$InitialCameraImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CameraReadyImplCopyWith<$Res> {
  factory _$$CameraReadyImplCopyWith(
          _$CameraReadyImpl value, $Res Function(_$CameraReadyImpl) then) =
      __$$CameraReadyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CameraController controller});
}

/// @nodoc
class __$$CameraReadyImplCopyWithImpl<$Res>
    extends _$FaceScannerStateCopyWithImpl<$Res, _$CameraReadyImpl>
    implements _$$CameraReadyImplCopyWith<$Res> {
  __$$CameraReadyImplCopyWithImpl(
      _$CameraReadyImpl _value, $Res Function(_$CameraReadyImpl) _then)
      : super(_value, _then);

  /// Create a copy of FaceScannerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? controller = null,
  }) {
    return _then(_$CameraReadyImpl(
      null == controller
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as CameraController,
    ));
  }
}

/// @nodoc

class _$CameraReadyImpl implements _CameraReady {
  const _$CameraReadyImpl(this.controller);

  @override
  final CameraController controller;

  @override
  String toString() {
    return 'FaceScannerState.cameraReady(controller: $controller)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CameraReadyImpl &&
            (identical(other.controller, controller) ||
                other.controller == controller));
  }

  @override
  int get hashCode => Object.hash(runtimeType, controller);

  /// Create a copy of FaceScannerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CameraReadyImplCopyWith<_$CameraReadyImpl> get copyWith =>
      __$$CameraReadyImplCopyWithImpl<_$CameraReadyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CameraController controller) initialCamera,
    required TResult Function(CameraController controller) cameraReady,
    required TResult Function(Recognition recognitions) loaded,
    required TResult Function(String message) registeredFace,
    required TResult Function(String message) error,
  }) {
    return cameraReady(controller);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CameraController controller)? initialCamera,
    TResult? Function(CameraController controller)? cameraReady,
    TResult? Function(Recognition recognitions)? loaded,
    TResult? Function(String message)? registeredFace,
    TResult? Function(String message)? error,
  }) {
    return cameraReady?.call(controller);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CameraController controller)? initialCamera,
    TResult Function(CameraController controller)? cameraReady,
    TResult Function(Recognition recognitions)? loaded,
    TResult Function(String message)? registeredFace,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (cameraReady != null) {
      return cameraReady(controller);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_InitialCamera value) initialCamera,
    required TResult Function(_CameraReady value) cameraReady,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_RegisterFace value) registeredFace,
    required TResult Function(_Error value) error,
  }) {
    return cameraReady(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_InitialCamera value)? initialCamera,
    TResult? Function(_CameraReady value)? cameraReady,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_RegisterFace value)? registeredFace,
    TResult? Function(_Error value)? error,
  }) {
    return cameraReady?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_InitialCamera value)? initialCamera,
    TResult Function(_CameraReady value)? cameraReady,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_RegisterFace value)? registeredFace,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (cameraReady != null) {
      return cameraReady(this);
    }
    return orElse();
  }
}

abstract class _CameraReady implements FaceScannerState {
  const factory _CameraReady(final CameraController controller) =
      _$CameraReadyImpl;

  CameraController get controller;

  /// Create a copy of FaceScannerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CameraReadyImplCopyWith<_$CameraReadyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Recognition recognitions});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$FaceScannerStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of FaceScannerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recognitions = null,
  }) {
    return _then(_$LoadedImpl(
      null == recognitions
          ? _value.recognitions
          : recognitions // ignore: cast_nullable_to_non_nullable
              as Recognition,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(this.recognitions);

  @override
  final Recognition recognitions;

  @override
  String toString() {
    return 'FaceScannerState.loaded(recognitions: $recognitions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            (identical(other.recognitions, recognitions) ||
                other.recognitions == recognitions));
  }

  @override
  int get hashCode => Object.hash(runtimeType, recognitions);

  /// Create a copy of FaceScannerState
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
    required TResult Function(CameraController controller) initialCamera,
    required TResult Function(CameraController controller) cameraReady,
    required TResult Function(Recognition recognitions) loaded,
    required TResult Function(String message) registeredFace,
    required TResult Function(String message) error,
  }) {
    return loaded(recognitions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CameraController controller)? initialCamera,
    TResult? Function(CameraController controller)? cameraReady,
    TResult? Function(Recognition recognitions)? loaded,
    TResult? Function(String message)? registeredFace,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(recognitions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CameraController controller)? initialCamera,
    TResult Function(CameraController controller)? cameraReady,
    TResult Function(Recognition recognitions)? loaded,
    TResult Function(String message)? registeredFace,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(recognitions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_InitialCamera value) initialCamera,
    required TResult Function(_CameraReady value) cameraReady,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_RegisterFace value) registeredFace,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_InitialCamera value)? initialCamera,
    TResult? Function(_CameraReady value)? cameraReady,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_RegisterFace value)? registeredFace,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_InitialCamera value)? initialCamera,
    TResult Function(_CameraReady value)? cameraReady,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_RegisterFace value)? registeredFace,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements FaceScannerState {
  const factory _Loaded(final Recognition recognitions) = _$LoadedImpl;

  Recognition get recognitions;

  /// Create a copy of FaceScannerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterFaceImplCopyWith<$Res> {
  factory _$$RegisterFaceImplCopyWith(
          _$RegisterFaceImpl value, $Res Function(_$RegisterFaceImpl) then) =
      __$$RegisterFaceImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$RegisterFaceImplCopyWithImpl<$Res>
    extends _$FaceScannerStateCopyWithImpl<$Res, _$RegisterFaceImpl>
    implements _$$RegisterFaceImplCopyWith<$Res> {
  __$$RegisterFaceImplCopyWithImpl(
      _$RegisterFaceImpl _value, $Res Function(_$RegisterFaceImpl) _then)
      : super(_value, _then);

  /// Create a copy of FaceScannerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$RegisterFaceImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegisterFaceImpl implements _RegisterFace {
  const _$RegisterFaceImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'FaceScannerState.registeredFace(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterFaceImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of FaceScannerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterFaceImplCopyWith<_$RegisterFaceImpl> get copyWith =>
      __$$RegisterFaceImplCopyWithImpl<_$RegisterFaceImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CameraController controller) initialCamera,
    required TResult Function(CameraController controller) cameraReady,
    required TResult Function(Recognition recognitions) loaded,
    required TResult Function(String message) registeredFace,
    required TResult Function(String message) error,
  }) {
    return registeredFace(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CameraController controller)? initialCamera,
    TResult? Function(CameraController controller)? cameraReady,
    TResult? Function(Recognition recognitions)? loaded,
    TResult? Function(String message)? registeredFace,
    TResult? Function(String message)? error,
  }) {
    return registeredFace?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CameraController controller)? initialCamera,
    TResult Function(CameraController controller)? cameraReady,
    TResult Function(Recognition recognitions)? loaded,
    TResult Function(String message)? registeredFace,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (registeredFace != null) {
      return registeredFace(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_InitialCamera value) initialCamera,
    required TResult Function(_CameraReady value) cameraReady,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_RegisterFace value) registeredFace,
    required TResult Function(_Error value) error,
  }) {
    return registeredFace(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_InitialCamera value)? initialCamera,
    TResult? Function(_CameraReady value)? cameraReady,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_RegisterFace value)? registeredFace,
    TResult? Function(_Error value)? error,
  }) {
    return registeredFace?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_InitialCamera value)? initialCamera,
    TResult Function(_CameraReady value)? cameraReady,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_RegisterFace value)? registeredFace,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (registeredFace != null) {
      return registeredFace(this);
    }
    return orElse();
  }
}

abstract class _RegisterFace implements FaceScannerState {
  const factory _RegisterFace(final String message) = _$RegisterFaceImpl;

  String get message;

  /// Create a copy of FaceScannerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterFaceImplCopyWith<_$RegisterFaceImpl> get copyWith =>
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
    extends _$FaceScannerStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of FaceScannerState
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
    return 'FaceScannerState.error(message: $message)';
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

  /// Create a copy of FaceScannerState
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
    required TResult Function(CameraController controller) initialCamera,
    required TResult Function(CameraController controller) cameraReady,
    required TResult Function(Recognition recognitions) loaded,
    required TResult Function(String message) registeredFace,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CameraController controller)? initialCamera,
    TResult? Function(CameraController controller)? cameraReady,
    TResult? Function(Recognition recognitions)? loaded,
    TResult? Function(String message)? registeredFace,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CameraController controller)? initialCamera,
    TResult Function(CameraController controller)? cameraReady,
    TResult Function(Recognition recognitions)? loaded,
    TResult Function(String message)? registeredFace,
    TResult Function(String message)? error,
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
    required TResult Function(_InitialCamera value) initialCamera,
    required TResult Function(_CameraReady value) cameraReady,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_RegisterFace value) registeredFace,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_InitialCamera value)? initialCamera,
    TResult? Function(_CameraReady value)? cameraReady,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_RegisterFace value)? registeredFace,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_InitialCamera value)? initialCamera,
    TResult Function(_CameraReady value)? cameraReady,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_RegisterFace value)? registeredFace,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements FaceScannerState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;

  /// Create a copy of FaceScannerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
