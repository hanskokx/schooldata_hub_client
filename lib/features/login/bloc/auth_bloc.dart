import 'dart:convert';
import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:schooldata_hub_client/common/utils/debug_printer.dart';
import 'package:schooldata_hub_client/common/utils/secure_storage.dart';
import 'package:schooldata_hub_client/features/login/classes/session_model.dart';

import 'auth_event.dart';
import 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const AuthInitialState()) {
    //-Start app event
    on<StartAppEvent>((event, emit) async {
      Debug().info('Looking for stored session!');
      //first test if session credentials are stored and valid

      if (await secureStorageContains('session') == true) {
        final String? storedSession = await secureStorageRead('session');
        Debug().warning('Session found! $storedSession');
        try {
          final session = Session.fromJson(
            json.decode(storedSession!) as Map<String, dynamic>,
          );
          if (JwtDecoder.isExpired(session.token!)) {
            await secureStorageDelete('session');
            Debug().warning('Session was not valid, deleted!');
            emit(
              const AuthErrorState(
                message: 'Token nicht mehr gültig, bitte wieder einloggen!',
              ),
            );
          }
          Debug().info('Leaving InitialState');
          emit(
            AuthenticatedState(
              username: session.username!,
              token: session.token!,
              isAdmin: session.isAdmin!,
            ),
          );
        } catch (e) {
          Debug().error(
            'Error reading session credentials from secureStorage: $e',
          );
          // errorsController.add(e as Exception);
          await secureStorageDelete('pupilBase');
          emit(const AuthUnauthenticatedState());
        }
      } else {
        Debug().info('No session found');
        emit(const AuthUnauthenticatedState());
      }
    });

    on<SignInEvent>((event, emit) async {
      Debug().info(
        'Sign in event received username ${event.username} password ${event.password}',
      );
      emit(const AuthLoadingState());
      if (event.username == '' || event.password == '') {
        emit(
          const AuthErrorState(
            message: 'Die Felder dürfen nicht leer sein!',
          ),
        );
      }
      try {
        final String basicAuth =
            'Basic ${base64Encode(utf8.encode('${event.username}:${event.password}'))}';

        final response = await http.get(
          Uri.parse('https://daten.medien-sandkasten.de/api/login'),
          headers: {HttpHeaders.authorizationHeader: basicAuth},
        );
        Debug().info('Request sent with: $basicAuth');

        if (response.statusCode == 200) {
          Debug().info('Response: ${response.body.toString()}');
          final decodedResponse =
              json.decode(response.body) as Map<String, dynamic>;
          final String token = decodedResponse['token'] as String;

          final bool isAdmin = decodedResponse['admin'] as bool;
          Debug().info('Is admin: $isAdmin');

          final Session newSession =
              Session(username: event.username, token: token, isAdmin: isAdmin);
          final jsonSession = json.encode(newSession.toJson());
          await secureStorageWrite('session', jsonSession);
          Debug().warning('Session stored! $jsonSession');
          emit(
            AuthenticatedState(
              username: event.username,
              token: token,
              isAdmin: isAdmin,
            ),
          );
        } else {
          if (response.statusCode == 401) {
            Debug().info('Response: ${response.body.toString()}');
            Debug().info('ERROR 401');
            final decodedResponse =
                json.decode(response.body) as Map<String, dynamic>;
            final String message = decodedResponse['message'] as String;
            emit(AuthErrorState(message: message));
          } else {}
        }
      } catch (e) {
        Debug().info('This error is catched!');
        emit(AuthErrorState(message: 'ERROR $e'));
      }
    });

    on<SignOutEvent>(
      (event, emit) async {
        await secureStorageDelete('session');
        Debug().info('Session deleted!');
        emit(const AuthUnauthenticatedState());
      },
    );
  }
}
