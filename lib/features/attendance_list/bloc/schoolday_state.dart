part of 'schoolday_bloc.dart';

class SchooldayErrorState extends SchooldayState {
  final String message;
  const SchooldayErrorState({required this.message});
}

class SchooldayInitialState extends SchooldayState {
  const SchooldayInitialState() : super();
}

class SchooldayLoadedState extends SchooldayState {
  final List<Schoolday> schooldayResult;

  const SchooldayLoadedState({
    required this.schooldayResult,
  });
}

class SchooldayLoadingState extends SchooldayState {
  const SchooldayLoadingState() : super();
}

class SchooldaySelectedDateState extends SchooldayState {
  final DateTime newSelectedDate;

  const SchooldaySelectedDateState({
    required this.newSelectedDate,
  }) : super(selectedDate: newSelectedDate);
}

@immutable
abstract class SchooldayState {
  final DateTime? selectedDate;
  const SchooldayState({
    this.selectedDate,
  });
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
