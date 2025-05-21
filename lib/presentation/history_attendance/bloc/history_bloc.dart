import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:presensi_app/data/datasource/presensi_remote_datasource.dart';
import 'package:presensi_app/data/models/responses/presensi_response_model.dart';

part 'history_event.dart';
part 'history_state.dart';
part 'history_bloc.freezed.dart';

class HistoryBloc extends Bloc<HistoryEvent, HistoryState> {
  final PresensiRemoteDatasource presensiRemoteDatasource;
  HistoryBloc(this.presensiRemoteDatasource) : super(_Initial()) {
    on<_GetHistoryAttendance>((event, emit) async {
      emit(_Loading());
      final result = await presensiRemoteDatasource.getPresensi();
      result.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_Loaded(r)),
      );
    });
  }
}
