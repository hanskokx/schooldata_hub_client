import 'package:flutter/material.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';
import 'package:go_router/go_router.dart';

class AppScaffold extends StatelessWidget {
  final Widget body;
  final Widget? secondaryBody;

  const AppScaffold({
    Key? key,
    required this.body,
    this.secondaryBody,
  }) : super(key: key ?? const ValueKey('ScaffoldWithNestedNavigation'));

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
      internalAnimations: false,
      body: SlotLayout(
        config: <Breakpoint, SlotLayoutConfig>{
          Breakpoints.small: SlotLayout.from(
            key: const Key('AppScaffold Body small'),
            builder: (_) => secondaryBody != null ? secondaryBody! : body,
          ),
          Breakpoints.mediumAndUp: SlotLayout.from(
            key: const Key('AppScaffold Body Medium'),
            builder: (_) => body,
          ),
        },
      ),
      secondaryBody: SlotLayout(
        config: <Breakpoint, SlotLayoutConfig>{
          Breakpoints.small: SlotLayout.from(
            key: const Key('AppScaffold Secondary Body Small'),
            builder: null,
          ),
          Breakpoints.mediumAndUp: SlotLayout.from(
            key: const Key('AppScaffold Secondary Body Medium'),
            builder: secondaryBody != null ? (_) => secondaryBody! : null,
          ),
        },
      ),
    );
  }
}

class AppScaffoldShell extends StatelessWidget {
  final StatefulNavigationShell navigationShell;
  const AppScaffoldShell({
    Key? key,
    required this.navigationShell,
  }) : super(key: key ?? const ValueKey('ScaffoldWithNestedNavigation'));
  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      useDrawer: false,
      selectedIndex: navigationShell.currentIndex,
      onSelectedIndexChange: onNavigationEvent,
      destinations: NavDestination.values
          .map(
            (e) => NavigationDestination(
              icon: Icon(
                e.inactiveIcon,
              ),
              selectedIcon: Icon(
                e.activeIcon,
              ),
              label: e.label,
            ),
          )
          .toList(),
      body: (_) => navigationShell,
    );
  }

  void onNavigationEvent(int index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }
}

enum NavDestination {
  home(
    "Home",
    Icons.check_box_outlined,
    Icons.check_box,
  ),
  list(
    "List",
    Icons.list,
    Icons.list_alt,
  ),
  settings(
    "Settings",
    Icons.settings,
    Icons.settings_applications_sharp,
  ),
  ;

  final String label;
  final IconData inactiveIcon;
  final IconData activeIcon;

  const NavDestination(
    this.label,
    this.inactiveIcon,
    this.activeIcon,
  );
}
