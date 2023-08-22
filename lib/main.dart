import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:schooldata_hub_client/common/bloc_provider.dart';
import 'package:schooldata_hub_client/common/injector.dart';
import 'package:schooldata_hub_client/common/main_app.dart';
import 'package:schooldata_hub_client/common/theme/theme.dart';

Future<void> main() async {
  await dotenv.load(fileName: ".env");
  await injectorSetup(GetIt.I);
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AppTheme(
      theme: ReactiveTheme(),
      child: const AppBlocProvider(
        child: MainApp(),
      ),
    );
  }
}
