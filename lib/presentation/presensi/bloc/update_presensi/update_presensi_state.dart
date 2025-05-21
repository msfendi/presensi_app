part of 'update_presensi_bloc.dart';

@freezed
class UpdatePresensiState with _$UpdatePresensiState {
  const factory UpdatePresensiState.initial() = _Initial;
  const factory UpdatePresensiState.loading() = _Loading;
  const factory UpdatePresensiState.loaded(String message) = _Loaded;
  const factory UpdatePresensiState.error(String message) = _Error;
}
