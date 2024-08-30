import 'package:flutter/material.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_template/modules/base/widgets/app_scaffold.dart';
import 'package:flutter_template/modules/base/home/details/details_view.dart';
import 'package:flutter_template/modules/base/home/home_view.dart';
import 'package:flutter_template/navigation.dart';

class DetailsRoute implements AppRoute {
  static const String path = ":id";

  @override
  GoRoute createRoute() {
    return GoRoute(
      path: path,
      pageBuilder: (context, state) {
        final id = state.pathParameters["id"]!;
        if (Breakpoints.largeAndUp.isActive(context)) {
          return NoTransitionPage(
            child: AppScaffoldContent(
              body: HomeView(selectedId: id),
              secondaryBody: DetailsView(id: id),
            ),
          );
        }
        return MaterialPage(
          key: state.pageKey,
          child: DetailsView(id: id),
        );
      },
    );
  }
}
