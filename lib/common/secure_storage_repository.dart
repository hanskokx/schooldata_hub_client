import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:schooldata_hub_client/common/utils/debug_printer.dart';
import 'package:schooldata_hub_client/common/utils/string_utils.dart';
import 'package:schooldata_hub_client/features/auth/api/auth_api.dart';
import 'package:schooldata_hub_client/features/auth/classes/access_token.dart';

enum Identifier {
  account,
  request,
  session,
}

class SecureStorageRepository {
  static const String _authTokenKey = 'authTokenKey';
  static const String _refreshTokenKey = 'refreshTokenKey';

  String? _accessTokenCache;
  String? _refreshTokenCache;

  final FlutterSecureStorage _storage;

  SecureStorageRepository(this._storage);

  String? get cachedAuthToken => _accessTokenCache;

  Future<bool> deleteAll() async {
    try {
      await _storage.deleteAll();

      _accessTokenCache = null;
      _refreshTokenCache = null;
      return true;
    } catch (exception) {
      return false;
    }
  }

  Future<String?> getAccessToken() async {
    _accessTokenCache ??= await _storage.read(key: _authTokenKey);

    if (_accessTokenCache == null) return null;

    final DateTime? tokenExpiration = _accessTokenCache?.jwtExpiryTime();

    if (tokenExpiration == null) {
      await refreshAuthTokens();
    }

    if (tokenExpiration != null) {
      final bool tokenExpiresSoon = tokenExpiration.isBefore(
        DateTime.now().add(
          const Duration(minutes: 5),
        ),
      );

      if (tokenExpiresSoon) {
        _accessTokenCache = await refreshAuthTokens();
      }
    }

    return _accessTokenCache;
  }

  Future<String?> getRefreshToken() async {
    try {
      _refreshTokenCache ??= await _storage.read(key: _refreshTokenKey);
    } catch (_) {
      Debug.warning(
        'Unable to read refresh token from local storage.',
      );
      return null;
    }

    if (_refreshTokenCache == null) {
      return null;
    }

    return _refreshTokenCache;
  }

  Future<String?> getValue(String key) async {
    Debug.info(
      'Getting value for $key from local storage',
    );

    String? value;

    try {
      value = await _storage.read(key: key);
      Debug.info(
        'Successfully retrived value for $key from local storage',
      );
    } catch (e) {
      Debug.warning(
        'Unable to retrieve value for $key from local storage',
      );
    }

    return value;
  }

  Future<String?> refreshAuthTokens() async {
    final AuthApi api = GetIt.I();
    _refreshTokenCache = await getRefreshToken();

    if (_refreshTokenCache == null) {
      return null;
    }

    try {
      final AccessToken? token = await api.refreshTokens(_refreshTokenCache!);
      if (token != null) {
        _accessTokenCache = token.accessToken;
      } else {
        throw Exception('Token was not refreshed');
      }
    } catch (e) {
      _accessTokenCache = null;
      Debug.error(
        'Error occurred while trying to refresh access token using refresh token.',
      );
    }
    if (_accessTokenCache == null) {
      Debug.info(
        'Unable to fetch request access token using refresh token because the refresh token in local storage is null.',
      );
      return null;
    }

    final bool authTokenSetSuccessfully =
        await setAccessToken(_accessTokenCache!);

    if (!authTokenSetSuccessfully) {
      Debug.warning(
        'Unable to save auth token in local storage.',
      );
    }

    return _accessTokenCache;
  }

  Future<bool> setAccessToken(String token) async {
    try {
      _accessTokenCache = token;

      await _storage.write(key: _authTokenKey, value: token);
      Debug.info(
        "Writing access token to secure storage",
      );

      return true;
    } catch (exception) {
      Debug.error(
        "There was an error while writing Auth token to secure storage",
      );
      return false;
    }
  }

  Future<bool> setRefreshToken(String token) async {
    try {
      _refreshTokenCache = token;
      await _storage.write(key: _refreshTokenKey, value: _refreshTokenCache);

      Debug.info(
        "Writing Refresh token to secure storage",
      );
      return true;
    } catch (exception) {
      Debug.error(
        "There was an error while writing Refresh token to secure storage",
      );
      return false;
    }
  }

  Future<bool> setValue(String key, String? value) async {
    Debug.info(
      'Setting value for $key in local storage',
    );

    try {
      await _storage.write(key: key, value: value);
      Debug.info(
        'Successfully set value for $key in local storage',
      );
      return true;
    } catch (e) {
      Debug.warning(
        'Unable to set value for $key in local storage',
      );
      return false;
    }
  }
}
