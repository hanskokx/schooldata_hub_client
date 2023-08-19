import 'dart:convert';
import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:schooldata_hub_client/common/utils/debug_printer.dart';
import 'auth_event.dart';
import 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const AuthInitialState()) {
    on<SignInEvent>((event, emit) async {
      Debug().info('Sign in event received');
      emit(const AuthLoadingState());
      try {
        final String basicAuth =
            'Basic ${base64Encode(utf8.encode('${event.username}:${event.password}'))}';

        final response = await http.get(
          Uri.parse('https://daten.medien-sandkasten.de/api/login'),
          headers: {HttpHeaders.authorizationHeader: basicAuth},
        );
        Debug().info('Request $basicAuth');

        if (response.statusCode == 200) {
          final String token = json.decode(response.body)['token'] as String;
          final bool isAdmin = json.decode(response.body)['isAdmin'] as bool;
          emit(
            AuthenticatedState(
              username: event.username,
              token: token,
              isAdmin: isAdmin,
            ),
          );
        } else {
          if (response.statusCode == 401) {
            final String message =
                json.decode(response.body)['message'] as String;
            emit(AuthErrorState(message: message));
          } else {}
        }
      } catch (e) {
        emit(AuthErrorState(message: '$e'));
      }
    });
  }
}
