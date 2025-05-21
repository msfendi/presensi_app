import 'package:bloc/bloc.dart';
import 'package:file_picker/file_picker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:presensi_app/data/models/responses/presensi_response_model.dart';

import '../../../../data/datasource/presensi_remote_datasource.dart';

part 'presensi_event.dart';
part 'presensi_state.dart';
part 'presensi_bloc.freezed.dart';

class PresensiBloc extends Bloc<PresensiEvent, PresensiState> {
  final PresensiRemoteDatasource presensiRemoteDatasource;
  PresensiBloc({required this.presensiRemoteDatasource}) : super(_Initial()) {
    on<_GetPresensi>((event, emit) async {
      emit(_Loading());
      final response = await presensiRemoteDatasource.getPresensi();
      response.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_Loaded(presensiResponse: r)),
      );
    });

    on<_StartPage>((event, emit) async {
      emit(_Page(0, null, null));
    });

    on<_NextPage>((event, emit) async {
      final currentPage = state.maybeMap(
        page: (pageState) => pageState.page,
        orElse: () => 0,
      );

      emit(PresensiState.page(currentPage + 1, null, null));
    });

    on<_SetAttendanceStatus>((event, emit) async {
      emit(_Page(1, event.status, null));
    });
  }
}
