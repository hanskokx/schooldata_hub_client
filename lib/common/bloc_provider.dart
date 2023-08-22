import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:schooldata_hub_client/features/attendance_list/bloc/schoolday_bloc.dart';
import 'package:schooldata_hub_client/features/auth/bloc/auth_bloc.dart';
import 'package:schooldata_hub_client/features/pupilbase/bloc/pupilbase_bloc.dart';

class AppBlocProvider extends StatelessWidget {
  final Widget child;
  const AppBlocProvider({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthBloc(GetIt.I()),
        ),
        BlocProvider(
          create: (context) => PupilBaseBloc(GetIt.I()),
        ),
        BlocProvider(
          create: (context) => SchooldayBloc(GetIt.I()),
        ),
      ],
      child: child,
    );
  }
}
