part of 'face_scanner_bloc.dart';

@freezed
class FaceScannerState with _$FaceScannerState {
  const factory FaceScannerState.initial() = _Initial;
  const factory FaceScannerState.loading() = _Loading;
  const factory FaceScannerState.initialCamera(CameraController controller) =
      _InitialCamera;
  const factory FaceScannerState.cameraReady(CameraController controller) =
      _CameraReady;
  const factory FaceScannerState.loaded(Recognition recognitions) = _Loaded;
  const factory FaceScannerState.registeredFace(String message) = _RegisterFace;
  const factory FaceScannerState.error(String message) = _Error;
}
