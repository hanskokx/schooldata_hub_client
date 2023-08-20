import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:schooldata_hub_client/common/pupil_blocs/pupilbase_bloc.dart';
import 'package:schooldata_hub_client/common/utils/debug_printer.dart';
import 'package:schooldata_hub_client/features/attendance_list/screens/attendance_list_screen.dart';
import 'package:schooldata_hub_client/features/login/bloc/auth_bloc.dart';
import 'package:schooldata_hub_client/features/login/bloc/auth_event.dart';
import 'package:schooldata_hub_client/features/login/screens/login_screen.dart';

import 'features/login/bloc/auth_state.dart';

Future<void> main() async {
  await dotenv.load(fileName: ".env");

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (BuildContext context) => AuthBloc(),
        ),
        BlocProvider(
          create: (BuildContext context) => PupilBaseBloc(),
        ),
      ],
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => AuthBloc(),
        child: const HomeScreen(),
      ),
    );
  }
}

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
