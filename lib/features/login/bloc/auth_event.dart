import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
abstract class AuthEvent extends Equatable {
  const AuthEvent();
  @override
  List<Object> get props => [];
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

class SignOutEvent extends AuthEvent {}
