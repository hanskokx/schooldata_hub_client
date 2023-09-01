import 'dart:convert';

extension JWTUtility on String {
  DateTime? jwtExpiryTime() {
    try {
      final payload = _parseJwt(this);
      final expiry = payload['exp'] as int;
      final date = DateTime.fromMillisecondsSinceEpoch(expiry * 1000);
      return date;
    } catch (_) {
      return null;
    }
  }

  String _decodeBase64(String str) {
    String output = str.replaceAll('-', '+').replaceAll('_', '/');
    switch (output.length % 4) {
      case 0:
        break;
      case 2:
        output += '==';
        break;
      case 3:
        output += '=';
        break;
      default:
        throw Exception('Illegal base64url string!"');
    }

    return utf8.decode(base64Url.decode(output));
  }

  Map<String, dynamic> _parseJwt(String token) {
    final parts = token.split('.');
    if (parts.length != 3) {
      throw Exception('invalid token');
    }

    final payload = _decodeBase64(parts[1]);
    final dynamic payloadMap = json.decode(payload);
    if (payloadMap is! Map<String, dynamic>) {
      throw Exception('invalid payload');
    }

    return payloadMap;
  }
}
