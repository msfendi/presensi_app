import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:presensi_app/data/datasource/location_remote_datasource.dart';
import 'package:presensi_app/data/datasource/presensi_remote_datasource.dart';

part 'add_presensi_event.dart';
part 'add_presensi_state.dart';
part 'add_presensi_bloc.freezed.dart';

class AddPresensiBloc extends Bloc<AddPresensiEvent, AddPresensiState> {
  final PresensiRemoteDatasource presensiRemoteDatasource;
  final LocationRemoteDatasource locationRemoteDatasource;
  AddPresensiBloc(
      {required this.presensiRemoteDatasource,
      required this.locationRemoteDatasource})
      : super(_Initial()) {
    on<_AddPresensi>((event, emit) async {
      emit(_Loading());
      final result = await presensiRemoteDatasource.savePresensi(
          event.latitude, event.longitude, event.status, event.filePath);

      result.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_Loaded(r)),
      );
    });
  }
}
