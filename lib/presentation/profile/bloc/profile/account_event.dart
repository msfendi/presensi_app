part of 'account_bloc.dart';

@freezed
class AccountEvent with _$AccountEvent {
  const factory AccountEvent.started() = _Started;
  const factory AccountEvent.getAccount() = _GetAccount;
  const factory AccountEvent.getFace() = _GetFace;
  const factory AccountEvent.updateAccount({
    required String name,
    required String email,
    required String phone,
  }) = _UpdateAccount;
}
