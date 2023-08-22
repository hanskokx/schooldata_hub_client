import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:schooldata_hub_client/common/pupil_blocs/pupilbase_bloc.dart';
import 'package:schooldata_hub_client/common/pupil_blocs/pupilbase_event.dart';
import 'package:schooldata_hub_client/common/utils/debug_printer.dart';
import 'package:schooldata_hub_client/features/login/bloc/auth_bloc.dart';
import 'package:schooldata_hub_client/common/widgets/snackbar.dart';

import '../../../common/pupil_blocs/pupilbase_state.dart';
import '../bloc/auth_event.dart';
import '../bloc/auth_state.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool? authenticated;
    return BlocListener<PupilBaseBloc, PupilBaseState>(
      listener: (context, state) {
        Debug().success('I can read this!');
        context.read<PupilBaseBloc>().add(
              const PupilBaseStartEvent(),
            );
      },
      child: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is AuthErrorState) {
            snackbarWarning(context, state.message);
          }
          if (state is AuthenticatedState) {
            BlocProvider.of<PupilBaseBloc>(context)
                .add(const PupilBaseStartEvent());
            Debug()
                .success('Bool authenticated is ${authenticated!.toString()}');
          }
        },
        builder: (BuildContext context, AuthState state) {
          return Scaffold(
            appBar: AppBar(title: const Text('Login')),
            body: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    controller: _usernameController,
                    decoration: const InputDecoration(labelText: 'Username'),
                  ),
                  TextFormField(
                    controller: _passwordController,
                    decoration: const InputDecoration(labelText: 'Password'),
                  ),
                  const SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: () {
                      Debug().info('Button pressed');
                      //final authBloc = BlocProvider.of<AuthBloc>(context);
                      _usernameController.text != '' &&
                              _passwordController.text != ''
                          ? context.read<AuthBloc>().add(
                                SignInEvent(
                                  username: _usernameController.text,
                                  password: _passwordController.text,
                                ),
                              )
                          : snackbarWarning(
                              context,
                              'Beide Felder müssen ausgefüllt sein!',
                            );
                    },
                    child: const Text('Login'),
                  ),
                  // Display error message if an error occurred
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
