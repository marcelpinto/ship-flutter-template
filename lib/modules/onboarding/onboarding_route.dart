import 'package:go_router/go_router.dart';
import 'package:flutter_template/navigation.dart';
import 'package:flutter_template/modules/onboarding/onboarding_view.dart';

class OnboardingRoute implements AppRoute {
  static const String path = "/onboarding";

  @override
  GoRoute createRoute() {
    return GoRoute(
      path: path,
      builder: (context, state) => const OnboardingView(),
    );
  }
}
