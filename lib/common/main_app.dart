import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:schooldata_hub_client/common/router.dart';
import 'package:schooldata_hub_client/common/theme/theme.dart';

final GoRouter _router = AppRouter.router;

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    final ReactiveTheme theme = context
        .dependOnInheritedWidgetOfExactType<AppTheme>()!
        .theme
      ..addListener(() => setState(() {}));

    return MaterialApp.router(
      routeInformationProvider: _router.routeInformationProvider,
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
      theme: theme.light,
      darkTheme: theme.dark,
      themeMode: theme.currentMode,
    );
  }
}
