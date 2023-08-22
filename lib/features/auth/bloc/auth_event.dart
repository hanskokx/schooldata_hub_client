part of 'auth_bloc.dart';

@immutable
abstract class AuthEvent {
  const AuthEvent();
}

class StartAppEvent extends AuthEvent {
  const StartAppEvent();
}

class SignInEvent extends AuthEvent {
  final String username;
  final String password;

  const SignInEvent({
    required this.username,
    required this.password,
  });
}

class SignOutEvent extends AuthEvent {
  const SignOutEvent();
}
