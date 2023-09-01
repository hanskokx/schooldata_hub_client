import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:schooldata_hub_client/common/router.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => Future.delayed(const Duration(seconds: 1))
          .then((_) => context.pushReplacementNamed(AppRouter.home)),
    );
    return const Scaffold(
      body: Center(
        child: FlutterLogo(),
      ),
    );
  }
}
