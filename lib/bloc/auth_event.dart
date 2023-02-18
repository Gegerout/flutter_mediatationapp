part of 'auth_bloc.dart';

@immutable
abstract class AuthEvent {}

class AuthUserEvent extends AuthEvent {
  final String email;
  final String password;

  AuthUserEvent(this.email, this.password);

}
