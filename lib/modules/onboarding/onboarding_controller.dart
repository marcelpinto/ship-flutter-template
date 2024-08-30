import 'package:context_watch_signals/context_watch_signals.dart';
import 'package:go_router/go_router.dart';
import 'package:lite_ref/lite_ref.dart';
import 'package:flutter_template/i18n/translations.g.dart';
import 'package:flutter_template/modules/base/home/home_route.dart';
import 'package:flutter_template/modules/base/image/app_image.dart';
import 'package:flutter_template/modules/base/logger.dart';
import 'package:flutter_template/modules/base/preferences.dart';
import 'package:flutter_template/modules/onboarding/onboarding_page.dart';
import 'package:flutter_template/navigation.dart';

final onboardingController = Ref.scoped(
  // You could instead use RemoteConfig to get different type of onboardings
  // And change the destination page based on it
  (context) => OnboardingController(
    destination: HomeRoute.path,
    destinationLabel: context.t.onboarding.login,
    pages: [
      OnboardingPage(
        title: context.t.onboarding.hero_title_start,
        subtitle: context.t.onboarding.hero_text_start,
        image: const AppImage.static(
          uri: 'assets/images/icon-512.png',
        ),
      ),
      OnboardingPage(
        title: context.t.onboarding.hero_title_end,
        subtitle: context.t.onboarding.hero_text_end,
        image: const AppImage.rive(
          uri: 'assets/rive/success.riv',
          name: "Check",
        ),
      ),
    ],
  ),
);

class OnboardingController {
  final String destination;
  final String destinationLabel;
  final List<OnboardingPage> pages;

  final _currentIndex = signal(0);
  late final currentIndex = _currentIndex.readonly();

  OnboardingController({
    required this.destination,
    required this.destinationLabel,
    required this.pages,
  });

  Future<void> next() async {
    if (_currentIndex.value == pages.length - 1) {
      _onCompleted(destination);
    } else {
      _currentIndex.value++;
    }
  }

  void skip() {
    if (currentIndex.value == pages.length - 1) {
      _onCompleted(destination);
    } else {
      _currentIndex.value = pages.length - 1;
    }
  }

  Future<void> _onCompleted(String path) async {
    try {
      final prefs = await preferences.instance;
      await prefs.setBool("onboarding", true);
    } catch (e) {
      log(e: () => "Error while setting onboarding", error: e);
    }
    rootNavigatorKey.currentContext!.go(path);
  }
}
