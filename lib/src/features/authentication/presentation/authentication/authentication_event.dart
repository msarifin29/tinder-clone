// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'authentication_bloc.dart';

@immutable
abstract class AuthenticationEvent {}

class AuthenticationUserRegister extends AuthenticationEvent {
  AuthenticationUserRegister({
    required this.userAccount,
    required this.isRegister,
  });

  final UserAccount userAccount;
  final bool isRegister;
}
