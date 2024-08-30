import 'package:flutter/foundation.dart';
import 'package:in_app_review/in_app_review.dart';
import 'package:lite_ref/lite_ref.dart';
import 'package:flutter_template/i18n/translations.g.dart';
import 'package:url_launcher/url_launcher.dart';

final ratingController = Ref.singleton(
  () => RatingController(InAppReview.instance),
);

class RatingController {
  final InAppReview _inAppReview;

  RatingController(this._inAppReview);

  Future<bool> requestReview() {
    return isAvailable().then(
      (available) => available
          ? _inAppReview.requestReview().then((_) => true)
          : Future.value(false),
    );
  }

  Future<bool> isAvailable() => _inAppReview.isAvailable();

  Future<void> openStoreListing() {
    if (kIsWeb) {
      return launchUrl(Uri.parse(t.rate_url));
    } else {
      return _inAppReview.openStoreListing();
    }
  }
}
