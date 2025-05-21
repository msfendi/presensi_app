part of 'update_presensi_bloc.dart';

@freezed
class UpdatePresensiEvent with _$UpdatePresensiEvent {
  const factory UpdatePresensiEvent.started() = _Started;
  const factory UpdatePresensiEvent.updatePresensi() = _UpdatePresensi;
}
