part of 'add_presensi_bloc.dart';

@freezed
class AddPresensiEvent with _$AddPresensiEvent {
  const factory AddPresensiEvent.started() = _Started;
  const factory AddPresensiEvent.addPresensi(
      {required String latitude,
      required String longitude,
      required String status,
      required String filePath}) = _AddPresensi;
}
