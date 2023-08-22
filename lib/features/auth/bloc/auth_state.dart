part of 'auth_bloc.dart';

class AuthenticatedState extends AuthState {
  final String username;
  final String token;
  final bool isAdmin;
  const AuthenticatedState({
    required this.username,
    required this.token,
    required this.isAdmin,
  }) : super(isAuthenticated: true);
}

class AuthErrorState extends AuthState {
  final String message;
  const AuthErrorState({required this.message})
      : super(isAuthenticated: false, isError: true);
}

class AuthInitialState extends AuthState {
  const AuthInitialState() : super();
}

class AuthLoadingState extends AuthState {
  const AuthLoadingState() : super();
}

@immutable
abstract class AuthState {
  final bool isAuthenticated;
  final bool isError;
  const AuthState({this.isAuthenticated = false, this.isError = false});
}

class AuthUnauthenticatedState extends AuthState {
  const AuthUnauthenticatedState()
      : super(isAuthenticated: false, isError: false);
}
