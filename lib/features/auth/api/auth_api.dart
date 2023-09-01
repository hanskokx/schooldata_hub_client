import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:result_monad/result_monad.dart';
import 'package:schooldata_hub_client/common/utils/debug_printer.dart';
import 'package:schooldata_hub_client/features/auth/classes/access_token.dart';
import 'package:schooldata_hub_client/features/auth/classes/session_model.dart';

class AuthApi {
  final Dio dio;
  final FlutterSecureStorage storage;
  AuthApi(this.dio, this.storage);

  Future<Session?> checkForExistingSession() async {
    Debug.info('Looking for stored session!');

    Session? session;
    final bool sessionIsSaved = await storage.containsKey(key: 'session');

    if (!sessionIsSaved) {
      Debug.info('No session found');
      return session;
    }

    final String? storedSession = await storage.read(key: 'session');

    if (storedSession == null) return session;

    Debug.warning('Session found! $storedSession');
    try {
      session = Session.fromJson(
        json.decode(storedSession) as Map<String, dynamic>,
      );
    } catch (e) {
      Debug.error(
        "Failed to create Session object from stored session data.",
      );
      return session;
    }
    if (session.token == null) {
      Debug.error("Invalid session token.");
      await storage.delete(key: 'session');
      await storage.delete(key: 'pupilBase');
      return null;
    }

    if (JwtDecoder.isExpired(session.token!)) {
      await storage.delete(key: 'session');
      await storage.delete(key: 'pupilBase');
      Debug.warning('Session has expired');
      return null;
    }

    return session;
  }

  Future<Result<Session?, dynamic>> login(
    String username,
    String password,
  ) async {
    Session? session;

    Debug.info(
      'Sign in event received username: $username password: $password',
    );

    final String basicAuth =
        'Basic ${base64Encode(utf8.encode('$username:$password'))}';

    Response? response;

    try {
      response = await dio.get(
        '/api/login',
        options: Options(
          headers: {
            'authorization': basicAuth,
          },
        ),
      );
      Debug.info('Request sent with: $basicAuth');
    } catch (e) {
      Debug.error('Login failed with error: $e');
      return Result.error(e);
    }

    if (response.statusCode == 200) {
      Debug.info('Response: ${response.data.toString()}');
      final Map<String, dynamic> decodedResponse =
          json.decode(response.data as String) as Map<String, dynamic>;
      final String token = decodedResponse['token'] as String;

      final bool isAdmin = decodedResponse['admin'] as bool;
      Debug.info('Is admin: $isAdmin');

      final Session newSession = Session(
        username: username,
        token: token,
        isAdmin: isAdmin,
      );
      final jsonSession = json.encode(newSession.toJson());
      await storage.write(key: 'session', value: jsonSession);
      Debug.warning('Session stored! $jsonSession');
    }

    if (response.statusCode == 401) {
      Debug.info('Response: ${response.data.toString()}');
      Debug.info('ERROR 401');
      final decodedResponse =
          json.decode(response.data as String) as Map<String, dynamic>;
      final String message = decodedResponse['message'] as String;
      return Result.error(message);
    }

    return Result.ok(session);
  }

  Future<AccessToken?> refreshTokens(String? refreshTokenCache) async {
    return null;
  }
}
