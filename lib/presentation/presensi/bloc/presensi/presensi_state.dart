part of 'presensi_bloc.dart';

@freezed
class PresensiState with _$PresensiState {
  const factory PresensiState.initial() = _Initial;
  const factory PresensiState.loading() = _Loading;
  const factory PresensiState.loaded({
    required PresensiResponse presensiResponse,
  }) = _Loaded;
  // uploading file
  const factory PresensiState.error(String message) = _Error;

  const factory PresensiState.page(
      int page, String? attendanceStatus, String? errorMessage) = _Page;
}
