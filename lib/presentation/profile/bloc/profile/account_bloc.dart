import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:presensi_app/data/datasource/auth_local_datasource.dart';
import 'package:presensi_app/data/datasource/auth_remote_datasource.dart';
import 'package:presensi_app/data/models/responses/get_face_response_model.dart';
import 'package:presensi_app/data/models/responses/login_response_model.dart';

import '../../../../data/datasource/face_remote_datasource.dart';

part 'account_event.dart';
part 'account_state.dart';
part 'account_bloc.freezed.dart';

class AccountBloc extends Bloc<AccountEvent, AccountState> {
  final AuthLocalDatasource authLocalDatasource;
  final AuthRemoteDatasource authRemoteDatasource;
  final FaceRemoteDatasource faceRemoteDatasource;
  AccountBloc(
      {required this.authLocalDatasource,
      required this.faceRemoteDatasource,
      required this.authRemoteDatasource})
      : super(_Initial()) {
    on<_GetAccount>((event, emit) async {
      emit(_Loading());
      try {
        final isAuth = await authLocalDatasource.isAuth();
        // print(authData!.data!.email);
        final faceData = await faceRemoteDatasource.getFace();
        // if (authData != null) {
        //   faceData.fold((l) {
        //     emit(_Error(l));
        //   }, (r) {
        //     emit(_Loaded(authData.data!, r.data!));
        //   });
        // } else {
        //   emit(_Error('Data tidak ditemukan'));
        // }

        if (isAuth) {
          final authData = await authLocalDatasource.getAuthData();
          faceData.fold((l) {
            emit(_Error(l));
          }, (r) {
            emit(_Loaded(authData!.data!, r.data!));
          });
        } else {
          emit(_Error('Data tidak ditemukan'));
        }
      } catch (e) {
        emit(_Error('Terjadi kesalahan: $e'));
      }
      
    });

    on<_UpdateAccount>((event, emit) async {
      emit(_Loading());
      final response = await authRemoteDatasource.updateAccount(
          event.name, event.email, event.phone);
      response.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_Loaded(Account(), Face())),
      );
    });
  }
}
