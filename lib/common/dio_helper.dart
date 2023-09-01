import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:schooldata_hub_client/common/authorization_interceptor.dart';

class DioHelper {
  DioHelper._();

  static Dio createDioInstance(GetIt container) {
    final baseOptions = BaseOptions(
      baseUrl: 'https://datahub.hermannschule.de',
      connectTimeout: const Duration(seconds: 20),
      receiveTimeout: const Duration(seconds: 40),
      followRedirects: false,
    );
    final dio = Dio(baseOptions);

    dio.interceptors.add(container.get<AuthorizationInterceptor>());

    return dio;
  }
}
