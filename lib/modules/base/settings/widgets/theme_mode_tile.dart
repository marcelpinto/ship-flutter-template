import 'package:flutter/material.dart';
import 'package:flutter_template/i18n/translations.g.dart';
import 'package:flutter_template/modules/base/settings/settings_controller.dart';
import 'package:context_watch_signals/context_watch_signals.dart';

class ThemeModeTile extends StatelessWidget {
  const ThemeModeTile({super.key});

  @override
  Widget build(BuildContext context) {
    final mode = settingsController.instance.themeMode.watch(context);
    return SwitchListTile(
      title: Text(context.t.settings.theme_mode),
      secondary: const Icon(Icons.light_rounded),
      contentPadding: const EdgeInsets.all(12),
      value: mode == ThemeMode.dark,
      onChanged: (value) => settingsController.instance.dispatch(
        value ? ThemeMode.dark : ThemeMode.light,
      ),
    );
  }
}
