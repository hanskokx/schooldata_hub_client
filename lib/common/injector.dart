import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:schooldata_hub_client/features/attendance_list/api/schoolday_api.dart';
import 'package:schooldata_hub_client/features/attendance_list/bloc/schoolday_bloc.dart';
import 'package:schooldata_hub_client/features/auth/api/auth_api.dart';
import 'package:schooldata_hub_client/features/auth/bloc/auth_bloc.dart';
import 'package:schooldata_hub_client/features/pupilbase/api/pupilbase_api.dart';
import 'package:schooldata_hub_client/features/pupilbase/bloc/pupilbase_bloc.dart';

Future<void> injectorSetup(GetIt getIt) async {
  const FlutterSecureStorage storage = FlutterSecureStorage();

  void registerApis() {
    getIt.registerLazySingleton<AuthApi>(
      () => AuthApi(),
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

  void registerSecureStorage() {
    getIt.registerLazySingleton<FlutterSecureStorage>(() => storage);
  }

  await getIt.reset();
  registerSecureStorage();
  registerApis();
  registerBlocs();
  await getIt.allReady();
}
