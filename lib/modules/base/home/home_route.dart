import 'package:flutter/material.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_template/i18n/translations.g.dart';
import 'package:flutter_template/modules/base/widgets/app_scaffold.dart';
import 'package:flutter_template/modules/base/home/details/details_route.dart';
import 'package:flutter_template/modules/base/home/home_view.dart';
import 'package:flutter_template/navigation.dart';

class HomeRoute implements NavigationRoute {
  static const String path = "/home";
  static const String name = "home";

  @override
  GoRoute createRoute() {
    return GoRoute(
      path: path,
      name: name,
      pageBuilder: (context, state) {
        if (Breakpoints.largeAndUp.isActive(context)) {
          return const NoTransitionPage(
            child: AppScaffoldContent(
              body: HomeView(),
            ),
          );
        }
        return MaterialPage(
          key: state.pageKey,
          child: const HomeView(),
        );
      },
      routes: [
        DetailsRoute().createRoute(),
      ],
    );
  }

  @override
  NavigationDestination createDestination(BuildContext context) {
    return NavigationDestination(
      icon: const Icon(Icons.home_rounded),
      label: context.t.navigation.home,
    );
  }
}
