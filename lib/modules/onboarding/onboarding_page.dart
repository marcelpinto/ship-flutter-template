import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_template/modules/base/image/app_image.dart';

part 'onboarding_page.freezed.dart';
part 'onboarding_page.g.dart';

@freezed
class OnboardingPage with _$OnboardingPage {
  factory OnboardingPage({
    required String title,
    required String subtitle,
    required AppImage image,
  }) = _OnboardingPage;

  factory OnboardingPage.fromJson(Map<String, dynamic> json) =>
      _$OnboardingPageFromJson(json);
}
