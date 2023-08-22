import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:schooldata_hub_client/common/utils/debug_printer.dart';
import 'package:schooldata_hub_client/features/attendance_list/screens/attendance_list_screen.dart';
import 'package:schooldata_hub_client/features/auth/bloc/auth_bloc.dart';
import 'package:schooldata_hub_client/features/auth/screens/login_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {},
      builder: (context, state) {
        context.read<AuthBloc>().add(const StartAppEvent());
        Debug().info('State is $state');

        if (state is AuthenticatedState) {
          return const AttendanceListScreen();
        } else if (state is AuthUnauthenticatedState ||
            state is AuthErrorState) {
          return LoginScreen();
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
