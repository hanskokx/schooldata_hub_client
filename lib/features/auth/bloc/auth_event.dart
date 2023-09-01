part of 'auth_bloc.dart';

@immutable
abstract class AuthEvent {
  const AuthEvent();
}

class RefreshSession extends AuthEvent {}

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

class StartAppEvent extends AuthEvent {
  const StartAppEvent();
}
