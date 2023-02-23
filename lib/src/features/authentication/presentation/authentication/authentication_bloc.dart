// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:tinder_clone/src/features/authentication/data/data_user_account_local.dart';
import 'package:tinder_clone/src/features/authentication/domain/user_account.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc() : super(AuthenticationInitial()) {
    on<AuthenticationUserRegister>((event, emit) async {
      emit(AuthenticationLoading());
      DataUserAccountLocal.setDataUserAccountFromStorage(event.userAccount);
      UserAccountRegister.setUserIsRegister(event.isRegister);
      await Future.delayed(const Duration(seconds: 2));
      emit(AuthenticationSucces(
        userAccount: event.userAccount,
        isRegister: event.isRegister,
      ));
    });
  }
}
