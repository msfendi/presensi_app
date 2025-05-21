import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:presensi_app/models/register_response.dart';

import '../../../../data/datasource/auth_remote_datasource.dart';

part 'register_event.dart';
part 'register_state.dart';
part 'register_bloc.freezed.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final AuthRemoteDatasource authRemoteDatasource;
  RegisterBloc({required this.authRemoteDatasource}) : super(_Initial()) {
    on<_Register>((event, emit) async {
      emit(const RegisterState.loading());
      final result = await authRemoteDatasource.register(
        event.username,
        event.email,
        event.password,
      );
      result.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_Loaded(r)),
      );
    });
  }
}
