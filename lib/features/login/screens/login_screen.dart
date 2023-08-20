import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:schooldata_hub_client/common/utils/debug_printer.dart';
import 'package:schooldata_hub_client/features/login/bloc/auth_bloc.dart';

import '../bloc/auth_event.dart';
import '../bloc/auth_state.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
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
                    context.read<AuthBloc>().add(
                          SignInEvent(
                            username: _usernameController.text,
                            password: _passwordController.text,
                          ),
                        );
                  },
                  child: const Text('Login'),
                ),
                // Display error message if an error occurred
                BlocBuilder<AuthBloc, AuthState>(
                  builder: (context, state) {
                    if (state is AuthErrorState) {
                      return Text(
                        state.message,
                        style: const TextStyle(color: Colors.red),
                      );
                    }
                    return const SizedBox.shrink();
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
