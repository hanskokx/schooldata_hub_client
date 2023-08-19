import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
abstract class AuthState extends Equatable {
  final bool isAuthenticated;
  final bool isError;
  const AuthState({this.isAuthenticated = false, this.isError = false});
  @override
  List<Object> get props => [];
}

class AuthInitialState extends AuthState {
  const AuthInitialState() : super();
}

class AuthLoadingState extends AuthState {
  const AuthLoadingState() : super();
}

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
      : super(isAuthenticated: false, isError: false);
}
