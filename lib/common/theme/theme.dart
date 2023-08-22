import 'package:flutter/material.dart';

final ThemeData baseTheme = ThemeData();

final ThemeData darkTheme = baseTheme.copyWith(
  brightness: Brightness.dark,
);

final ThemeData lightTheme = baseTheme.copyWith(
  brightness: Brightness.light,
);

class AppTheme extends InheritedWidget {
  final ReactiveTheme theme;

  @override
  const AppTheme({
    Key? key,
    required this.theme,
    required Widget child,
  }) : super(key: key, child: child);

  @override
  bool updateShouldNotify(AppTheme oldWidget) {
    return true;
  }

  static AppTheme? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AppTheme>();
  }
}

class ReactiveTheme with ChangeNotifier {
  static bool _isDark = true;

  ThemeMode get currentMode => _isDark ? ThemeMode.dark : ThemeMode.light;
  ThemeData get dark => darkTheme;

  ThemeData get light => lightTheme;

  void switchTheme() {
    _isDark = !_isDark;
    notifyListeners();
  }
}
