part of 'presensi_bloc.dart';

@freezed
class PresensiEvent with _$PresensiEvent {
  const factory PresensiEvent.started() = _Started;
  const factory PresensiEvent.getPresensi() = _GetPresensi;

  const factory PresensiEvent.startPage() = _StartPage;
  const factory PresensiEvent.nextPage() = _NextPage;
  const factory PresensiEvent.setAttendanceStatus(String status) =
      _SetAttendanceStatus;
}
