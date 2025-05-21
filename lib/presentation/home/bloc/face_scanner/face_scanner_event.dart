part of 'face_scanner_bloc.dart';

@freezed
class FaceScannerEvent with _$FaceScannerEvent {
  const factory FaceScannerEvent.started() = _Started;
  const factory FaceScannerEvent.loadCamera() = _LoadCamera;
  const factory FaceScannerEvent.disposeCamera() = _DisposeCamera;
  const factory FaceScannerEvent.faceDetected(File imageFile) = _FaceDetected;

  const factory FaceScannerEvent.showLoaderDialog() = _ShowLoaderDialog;
  const factory FaceScannerEvent.handleLocationPermission() =
      _HandleLocationPermission;
  const factory FaceScannerEvent.processImage(InputImage inputImage) =
      _ProcessImage;
}
