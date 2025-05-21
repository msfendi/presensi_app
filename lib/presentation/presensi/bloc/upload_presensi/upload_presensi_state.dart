part of 'upload_presensi_bloc.dart';

@freezed
class UploadPresensiState with _$UploadPresensiState {
  const factory UploadPresensiState.initial() = _Initial;
  const factory UploadPresensiState.loading() = _Loading;
  const factory UploadPresensiState.loaded() = _Loaded;
  const factory UploadPresensiState.uploadedFile(String filePath) =
      _UploadedFile;
  const factory UploadPresensiState.error(String message) = _Error;
}
