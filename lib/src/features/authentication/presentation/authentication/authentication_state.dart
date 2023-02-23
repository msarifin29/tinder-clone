part of 'authentication_bloc.dart';

@immutable
abstract class AuthenticationState {}

class AuthenticationInitial extends AuthenticationState {}

class AuthenticationLoading extends AuthenticationState {}

class AuthenticationSucces extends AuthenticationState {
  final UserAccount userAccount;
  final bool isRegister;

  AuthenticationSucces({required this.userAccount, required this.isRegister});
}
