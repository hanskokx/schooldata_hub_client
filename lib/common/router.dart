import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:schooldata_hub_client/common/app_scaffold.dart';
import 'package:schooldata_hub_client/features/auth/screens/login_screen.dart';
import 'package:schooldata_hub_client/features/home/screens/home_screen.dart';
import 'package:schooldata_hub_client/features/splash/screens/splash_screen.dart';

final GlobalKey<NavigatorState> activitiesNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: "activitiesNavigator");
final GlobalKey<NavigatorState> homeNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: "homeNavigator");
final GlobalKey<NavigatorState> loginNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: "loginNavigator");
final GlobalKey<NavigatorState> profileNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: "profileNavigator");
final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();

class AppRouter {
  static const String splash = "/splash";
  static const String login = "/login";
  static const String home = "/home";

  static final router = GoRouter(
    // TODO: A proper error screen should be designed and placed here
    errorBuilder: (context, state) => Container(
      color: Colors.red,
      child: Center(
        child: Text('No route defined for ${state.path}'),
      ),
    ),
    navigatorKey: _rootNavigatorKey,
    initialLocation: "/splash",
    debugLogDiagnostics: true,
    redirect: (BuildContext context, GoRouterState state) {
      // final Session? session = context.read<AuthBloc>().session;
      // if (session == null) {
      //   AuthenticationService.instance.setUnauthenticated();
      // } else {
      //   context.read<AuthBloc>().add(RefreshSession());
      // }

      // final AuthenticationStatus status = AuthenticationService.instance.status;

      // final List<String> guardedRoutes = [
      //   AppRouter.home,
      // ];

      // if (status != AuthenticationStatus.authenticated &&
      //     guardedRoutes.any(
      //       (String path) => state.matchedLocation.contains(path),
      //     )) {
      //   log("Redirecting from ${state.matchedLocation} to login as a guard route");

      //   return state.namedLocation(
      //     AppRouter.login,
      //     queryParameters: <String, String>{"from": state.matchedLocation},
      //   );
      // }
      return null;
    },
    routes: <RouteBase>[
      GoRoute(
        path: "/",
        redirect: (_, __) => AppRouter.home,
      ),
      GoRoute(
        path: AppRouter.splash,
        name: AppRouter.splash,
        builder: (context, state) => const SplashScreen(),
      ),
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return AppScaffoldShell(
            navigationShell: navigationShell,
          );
        },
        branches: <StatefulShellBranch>[
          // Home branch
          StatefulShellBranch(
            initialLocation: AppRouter.home,
            navigatorKey: homeNavigatorKey,
            routes: [
              GoRoute(
                name: AppRouter.home,
                path: AppRouter.home,
                pageBuilder: (context, state) => NoTransitionPage(
                  child: AppScaffold(
                    body: HomeScreen(
                      key: state.pageKey,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      ShellRoute(
        pageBuilder: (context, state, navigationShell) => NoTransitionPage(
          child: navigationShell,
        ),
        routes: [
          GoRoute(
            name: AppRouter.login,
            path: AppRouter.login,
            builder: (BuildContext context, GoRouterState state) {
              return LoginScreen(
                key: const Key('login_screen'),
              );
            },
          ),
        ],
      ),
    ],
  );
}
