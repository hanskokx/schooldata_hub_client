import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:schooldata_hub_client/common/dio_helper.dart';
import 'package:schooldata_hub_client/features/attendance_list/api/schoolday_api.dart';
import 'package:schooldata_hub_client/features/attendance_list/bloc/schoolday_bloc.dart';
import 'package:schooldata_hub_client/features/auth/api/auth_api.dart';
import 'package:schooldata_hub_client/features/auth/bloc/auth_bloc.dart';
import 'package:schooldata_hub_client/features/pupilbase/api/pupilbase_api.dart';
import 'package:schooldata_hub_client/features/pupilbase/bloc/pupilbase_bloc.dart';

Future<void> injectorSetup(GetIt getIt) async {
  void registerApis() {
    getIt.registerLazySingleton<AuthApi>(
      () => AuthApi(
        getIt<Dio>(),
        getIt<FlutterSecureStorage>(),
      ),
    );
    getIt.registerLazySingleton<SchooldayApi>(
      () => SchooldayApi(),
    );
  }

  void registerBlocs() {
    getIt.registerLazySingleton<AuthBloc>(
      () => AuthBloc(
        getIt<AuthApi>(),
        getIt<FlutterSecureStorage>(),
      ),
    );
    getIt.registerLazySingleton<PupilBaseBloc>(
      () => PupilBaseBloc(
        getIt<PupilBaseApi>(),
        getIt<FlutterSecureStorage>(),
      ),
    );
    getIt.registerLazySingleton<SchooldayBloc>(
      () => SchooldayBloc(
        getIt<SchooldayApi>(),
        getIt<FlutterSecureStorage>(),
      ),
    );
  }

  void registerHelpers() {
    getIt.registerLazySingleton<FlutterSecureStorage>(
      () => const FlutterSecureStorage(
        aOptions: AndroidOptions(
          encryptedSharedPreferences: true,
        ),
      ),
    );

    getIt.registerLazySingleton<Dio>(
      () => DioHelper.createDioInstance(getIt),
    );
  }

  await getIt.reset();
  registerHelpers();
  registerApis();
  registerBlocs();
  await getIt.allReady();
}
