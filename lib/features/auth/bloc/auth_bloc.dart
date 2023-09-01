import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:result_monad/result_monad.dart';
import 'package:schooldata_hub_client/common/utils/debug_printer.dart';
import 'package:schooldata_hub_client/features/auth/api/auth_api.dart';
import 'package:schooldata_hub_client/features/auth/classes/session_model.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthApi api;
  final FlutterSecureStorage storage;
  Session? _session;

  AuthBloc(this.api, this.storage) : super(const AuthInitialState()) {
    on<StartAppEvent>((event, emit) async {
      emit(const AuthLoadingState());

      final Session? session = await api.checkForExistingSession();

      if (session == null) {
        emit(const AuthUnauthenticatedState());
        return;
      }

      if (session.username == null ||
          session.token == null ||
          session.isAdmin != true) {
        emit(const AuthErrorState(message: "Login session invalid"));
        return;
      }

      _session = session;

      emit(
        AuthenticatedState(
          username: session.username!,
          token: session.token!,
          isAdmin: session.isAdmin!,
        ),
      );
    });
    on<SignInEvent>((event, emit) async {
      emit(const AuthLoadingState());
      final Result<Session?, dynamic> result =
          await api.login(event.username, event.password);

      if (result.isFailure) {
        emit(AuthErrorState(message: result.error.toString()));
        return;
      }

      _session = result.value;

      emit(
        AuthenticatedState(
          username: event.username,
          token: result.value!.token!,
          isAdmin: result.value!.isAdmin ?? false,
        ),
      );
    });

    on<SignOutEvent>(
      (event, emit) async {
        await storage.delete(key: 'session');
        Debug.info('Session deleted!');
        _session = null;
        emit(const AuthUnauthenticatedState());
      },
    );
  }
  Session? get session => _session;
}
