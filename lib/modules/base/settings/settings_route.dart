import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_template/i18n/translations.g.dart';
import 'package:flutter_template/navigation.dart';
import 'package:flutter_template/modules/base/settings/settings_view.dart';

class SettingsRoute implements NavigationRoute {
  static const String path = "/settings";

  @override
  GoRoute createRoute() {
    return GoRoute(
      path: path,
      builder: (context, state) => const SettingsView(),
    );
  }

  @override
  NavigationDestination createDestination(BuildContext context) {
    return NavigationDestination(
      icon: const Icon(Icons.settings_rounded),
      label: context.t.navigation.settings,
    );
  }
}
