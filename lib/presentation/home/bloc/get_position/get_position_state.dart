part of 'get_position_bloc.dart';

@freezed
class GetPositionState with _$GetPositionState {
  const factory GetPositionState.initial() = _Initial;
  const factory GetPositionState.loading() = _Loading;
  const factory GetPositionState.loadedStatus(String message) = _LoadedStatus;
  const factory GetPositionState.loadedPosition(Position position) =
      _LoadedPosition;
  const factory GetPositionState.error(String message) = _Error;
}
