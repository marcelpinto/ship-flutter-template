import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_template/modules/base/logger.dart';
import 'package:flutter_template/modules/base/widgets/app_scaffold.dart';

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();

abstract class AppRoute {
  GoRoute createRoute();
}

abstract class NavigationRoute extends AppRoute {
  NavigationDestination createDestination(BuildContext context);
}

GoRouter createRouter({
  required String initialLocation,
  required List<NavigationRoute> navigationRoutes,
  required List<AppRoute> otherRoutes,
  GoRouterRedirect? redirect,
}) {
  return GoRouter(
    debugLogDiagnostics: kDebugMode,
    navigatorKey: rootNavigatorKey,
    initialLocation: initialLocation,
    observers: [
      if (kDebugMode) DebugRouterObserver(),
    ],
    redirect: (context, state) {
      // Call redirect function if provided otherwise apply root redirect
      // Useful for web navigation when the user only goes to the domain name
      return redirect?.call(context, state) ??
          (state.matchedLocation == "/" ? initialLocation : null);
    },
    routes: <RouteBase>[
      createNavigationShell(navigationRoutes),
      ...otherRoutes.map((e) => e.createRoute()),
    ],
  );
}

StatefulShellRoute createNavigationShell(List<NavigationRoute> routes) {
  return StatefulShellRoute.indexedStack(
    builder: (context, state, navigationShell) {
      return AppScaffold(
        currentIndex: navigationShell.currentIndex,
        body: navigationShell,
        destinations: routes.map((e) => e.createDestination(context)).toList(),
        onNavigate: (index) {
          navigationShell.goBranch(
            index,
            initialLocation: index == navigationShell.currentIndex,
          );
        },
      );
    },
    branches: routes
        .map((e) => e.createRoute())
        .map(
          (e) => StatefulShellBranch(
            initialLocation: e.path,
            navigatorKey: GlobalKey<NavigatorState>(debugLabel: e.path),
            routes: [e],
          ),
        )
        .toList(),
  );
}

class DebugRouterObserver extends NavigatorObserver {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    log(d: () => 'did push route $route');
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    log(d: () => 'did pop route $route');
  }

  @override
  void didRemove(Route route, Route? previousRoute) {
    log(d: () => 'did remove route $route');
    super.didRemove(route, previousRoute);
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    log(d: () => 'did replace route $newRoute for $oldRoute');
  }
}
