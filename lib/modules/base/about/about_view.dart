import 'package:flutter/material.dart';
import 'package:flutter_template/i18n/translations.g.dart';
import 'package:flutter_template/theme/app_theme.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutView extends StatelessWidget {
  static const routeName = "/about";

  const AboutView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      clipBehavior: Clip.none,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 200,
            alignment: Alignment.center,
            color: context.theme.colorScheme.secondaryContainer,
            child: Padding(
              padding: const EdgeInsets.only(
                top: 48.0,
                left: 16,
                right: 16,
                bottom: 16,
              ),
              child: Text(
                context.t.about.title,
                style: context.textTheme.displayMedium,
                softWrap: true,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  context.t.about.intro_title,
                  style: context.textTheme.displaySmall,
                ),
                Container(
                  width: 30,
                  height: 3,
                  color: context.theme.colorScheme.primary,
                ),
                const SizedBox(height: 20),
                Text(context.t.about.intro_content),
                const SizedBox(height: 20),
                FilledButton.icon(
                  onPressed: () => launchUrl(
                    Uri.parse(context.t.about.learn_more_url),
                  ),
                  icon: const Icon(Icons.open_in_new_rounded),
                  iconAlignment: IconAlignment.end,
                  label: Text(context.t.about.learn_more),
                ),
                const SizedBox(height: 20),
                Text(
                  context.t.about.purpose_title,
                  style: context.textTheme.displaySmall,
                ),
                Container(
                  width: 30,
                  height: 3,
                  color: context.theme.colorScheme.primary,
                ),
                const SizedBox(height: 20),
                Text(context.t.about.purpose_content),
                const SizedBox(height: 20),
                Card.filled(
                  margin: const EdgeInsets.all(0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        contentPadding:
                            const EdgeInsets.only(top: 16, left: 16, right: 16),
                        leading: const Icon(Icons.tips_and_updates_rounded),
                        title: Text(
                          context.t.about.hint_title,
                          style: context.textTheme.titleMedium,
                        ),
                        dense: true,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(context.t.about.hint_content),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
