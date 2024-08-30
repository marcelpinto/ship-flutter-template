import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_template/i18n/translations.g.dart';
import 'package:flutter_template/modules/base/about/about_view.dart';
import 'package:flutter_template/navigation.dart';

class AboutRoute implements NavigationRoute {
  static const String path = "/about";

  @override
  GoRoute createRoute() {
    return GoRoute(
      path: path,
      builder: (context, state) => const AboutView(),
    );
  }

  @override
  NavigationDestination createDestination(BuildContext context) {
    return NavigationDestination(
      icon: const Icon(Icons.info_rounded),
      label: context.t.navigation.about,
    );
  }
}
