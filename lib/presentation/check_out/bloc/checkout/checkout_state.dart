part of 'checkout_bloc.dart';

@freezed
class CheckoutState with _$CheckoutState {
  const factory CheckoutState.initial() = _Initial;
  const factory CheckoutState.loading() = _Loading;
  const factory CheckoutState.initialCamera(CameraController controller) =
      _InitialCamera;
  const factory CheckoutState.cameraReady(CameraController controller) =
      _CameraReady;
  const factory CheckoutState.loaded(Recognition recognitions) = _Loaded;

  const factory CheckoutState.checkOutLoaded(String message) = _CheckOutLoaded;
  const factory CheckoutState.error(String message) = _Error;
}
