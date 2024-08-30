import 'package:flutter/material.dart';
import 'package:flutter_template/i18n/translations.g.dart';
import 'package:flutter_template/modules/base/rating_controller.dart';
import 'package:flutter_template/modules/base/settings/widgets/theme_mode_tile.dart';
import 'package:flutter_template/theme/app_theme.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingsView extends StatelessWidget {
  static const routeName = "/settings";

  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: ListView(
          clipBehavior: Clip.none,
          children: [
            Text(
              context.t.settings.title,
              style: context.textTheme.headlineLarge,
            ),
            const SizedBox(height: 24),
            Card.filled(
              color: context.theme.cardColor,
              child: Column(
                children: [
                  const ThemeModeTile(),
                  const Divider(thickness: 1.0, height: 4),
                  ListTile(
                    title: Text(context.t.settings.privacy),
                    leading: const Icon(Icons.policy_rounded),
                    contentPadding: const EdgeInsets.all(12),
                    onTap: () => launchUrl(Uri.parse(context.t.privacy_url)),
                  ),
                  const Divider(thickness: 1.0, height: 4),
                  ListTile(
                    title: Text(context.t.settings.terms),
                    leading: const Icon(Icons.privacy_tip_rounded),
                    contentPadding: const EdgeInsets.all(12),
                    onTap: () => launchUrl(Uri.parse(context.t.terms_url)),
                  ),
                  const Divider(thickness: 1.0, height: 4),
                  ListTile(
                    title: Text(context.t.settings.support),
                    leading: const Icon(Icons.help_rounded),
                    contentPadding: const EdgeInsets.all(12),
                    onTap: () => launchUrl(Uri.parse(context.t.support_url)),
                  ),
                  const Divider(thickness: 1.0, height: 4),
                  ListTile(
                    title: Text(context.t.settings.rate),
                    leading: const Icon(Icons.rate_review_rounded),
                    contentPadding: const EdgeInsets.all(12),
                    onTap: () {
                      ratingController.instance.openStoreListing().ignore();
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
