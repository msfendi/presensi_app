part of 'checkout_bloc.dart';

@freezed
class CheckoutEvent with _$CheckoutEvent {
  const factory CheckoutEvent.started() = _Started;
  const factory CheckoutEvent.loadCamera() = _LoadCamera;
  const factory CheckoutEvent.disposeCamera() = _DisposeCamera;
  const factory CheckoutEvent.faceDetected(File imageFile) = _FaceDetected;

  const factory CheckoutEvent.showLoaderDialog() = _ShowLoaderDialog;
  const factory CheckoutEvent.handleLocationPermission() =
      _HandleLocationPermission;
  const factory CheckoutEvent.processImage(InputImage inputImage) =
      _ProcessImage;

  const factory CheckoutEvent.checkOutPresensi() = _CheckOutPresensi;
}
