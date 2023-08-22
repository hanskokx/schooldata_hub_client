import 'dart:developer';

import 'package:flutter/foundation.dart';

class AuthenticationService {
  static bool _mocked = false;
  static final AuthenticationService _instance =
      AuthenticationService._internal();

  static AuthenticationService get instance => _instance;

  AuthenticationStatus _status = AuthenticationStatus.unauthenticated;

  AuthenticationService._internal();

  AuthenticationStatus get status => _status;

  void setAuthenticated() {
    if (_mocked) {
      return;
    }
    _setStatus(AuthenticationStatus.authenticated);
  }

  void setUnauthenticated() {
    if (_mocked) {
      return;
    }
    _setStatus(AuthenticationStatus.unauthenticated);
  }

  void _setStatus(AuthenticationStatus newStatus) {
    if (_mocked) {
      return;
    }
    log("User authentication status is now ${newStatus.name}");
    _status = newStatus;
  }

  @visibleForTesting
  static void setMocked() => _mocked = true;
}

enum AuthenticationStatus {
  authenticated,
  unauthenticated,
}
