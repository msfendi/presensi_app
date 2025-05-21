part of 'upload_presensi_bloc.dart';

@freezed
class UploadPresensiEvent with _$UploadPresensiEvent {
  const factory UploadPresensiEvent.started() = _Started;
  const factory UploadPresensiEvent.uploadFile() = _UploadFile;
}
