import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:schooldata_hub_client/features/attendance_list/classes/schoolday_model.dart';

@immutable
abstract class SchooldayState extends Equatable {
  final DateTime? selectedDate;
  const SchooldayState({
    this.selectedDate,
  });

  @override
  List<Object> get props => [];
}

class SchooldayInitialState extends SchooldayState {
  const SchooldayInitialState() : super();
}

class SchooldayLoadingState extends SchooldayState {
  const SchooldayLoadingState() : super();
}

class SchooldayLoadedState extends SchooldayState {
  final List<Schoolday> schooldayResult;

  const SchooldayLoadedState({
    required this.schooldayResult,
  });
}

class SchooldaySelectedDateState extends SchooldayState {
  final DateTime newSelectedDate;

  const SchooldaySelectedDateState({
    required this.newSelectedDate,
  }) : super(selectedDate: newSelectedDate);
}

class SchooldayErrorState extends SchooldayState {
  final String message;
  const SchooldayErrorState({required this.message});
}
// abstract class SchooldaysState extends Equatable {
//   final bool isAuthenticated;
//   final bool isError;
//   const AuthState({this.isAuthenticated = false, this.isError = false});
//   @override
//   List<Object> get props => [];
// }

// class AuthInitialState extends AuthState {
//   const AuthInitialState() : super();
// }

// class AuthUnauthenticatedState extends AuthState {
//   const AuthUnauthenticatedState()
//       : super(isAuthenticated: false, isError: false);
// }

// class AuthLoadingState extends AuthState {
//   const AuthLoadingState() : super();
// }

// class AuthenticatedState extends AuthState {
//   final String username;
//   final String token;
//   final bool isAdmin;
//   const AuthenticatedState({
//     required this.username,
//     required this.token,
//     required this.isAdmin,
//   }) : super(isAuthenticated: true);
// }

// class AuthErrorState extends AuthState {
//   final String message;
//   const AuthErrorState({required this.message})
//       : super(isAuthenticated: false, isError: false);
// }
