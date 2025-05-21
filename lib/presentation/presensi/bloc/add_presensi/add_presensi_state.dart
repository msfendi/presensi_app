part of 'add_presensi_bloc.dart';

@freezed
class AddPresensiState with _$AddPresensiState {
  const factory AddPresensiState.initial() = _Initial;
  const factory AddPresensiState.loading() = _Loading;
  const factory AddPresensiState.loaded(String message) = _Loaded;
  const factory AddPresensiState.error(String message) = _Error;
}
