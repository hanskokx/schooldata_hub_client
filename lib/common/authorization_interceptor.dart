import 'package:dio/dio.dart';
import 'package:schooldata_hub_client/common/http_constants.dart';
import 'package:schooldata_hub_client/common/secure_storage_repository.dart';

class AuthorizationInterceptor extends Interceptor {
  final SecureStorageRepository _secureStorageRepository;

  AuthorizationInterceptor(this._secureStorageRepository);

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    if (options.path == 'ACCESS_TOKEN_URL') {
      return super.onRequest(options, handler);
    }

    final String? token = await _secureStorageRepository.getAccessToken();

    if (token != null) {
      options.headers.addAll(
        <String, String>{
          Header.authorization: 'Bearer $token',
        },
      );
    }

    return super.onRequest(options, handler);
  }
}
