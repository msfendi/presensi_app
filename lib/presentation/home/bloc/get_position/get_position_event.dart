part of 'get_position_bloc.dart';

@freezed
class GetPositionEvent with _$GetPositionEvent {
  const factory GetPositionEvent.started() = _Started;
  const factory GetPositionEvent.getCurrentLocation() = _GetCurrentLocation;
  const factory GetPositionEvent.getStatusLocation() = _GetStatusLocation;
}
