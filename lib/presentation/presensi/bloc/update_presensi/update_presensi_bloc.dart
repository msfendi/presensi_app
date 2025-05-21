import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/datasource/presensi_remote_datasource.dart';

part 'update_presensi_event.dart';
part 'update_presensi_state.dart';
part 'update_presensi_bloc.freezed.dart';

class UpdatePresensiBloc
    extends Bloc<UpdatePresensiEvent, UpdatePresensiState> {
  final PresensiRemoteDatasource presensiRemoteDatasource;
  UpdatePresensiBloc({required this.presensiRemoteDatasource})
      : super(_Initial()) {
    on<_UpdatePresensi>((event, emit) async {
      emit(_Loading());
      final result = await presensiRemoteDatasource.updatePresensi();
      result.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_Loaded(r)),
      );
    });
  }
}
