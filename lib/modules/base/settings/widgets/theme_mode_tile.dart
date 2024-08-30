import 'package:flutter/material.dart';
import 'package:flutter_template/i18n/translations.g.dart';
import 'package:flutter_template/modules/base/settings/settings_controller.dart';
import 'package:context_watch_signals/context_watch_signals.dart';
import 'package:flutter_template/theme/app_theme.dart';

class ThemeModeTile extends StatelessWidget {
  const ThemeModeTile({super.key});

  @override
  Widget build(BuildContext context) {
    final mode = settingsController.instance.themeMode.watch(context);
    final toggled = mode == ThemeMode.system
        ? context.theme.brightness == Brightness.dark
        : mode == ThemeMode.dark;
    return SwitchListTile(
      title: Text(context.t.settings.theme_mode),
      secondary: const Icon(Icons.light_rounded),
      contentPadding: const EdgeInsets.all(12),
      value: toggled,
      onChanged: (value) => settingsController.instance.dispatch(
        value ? ThemeMode.dark : ThemeMode.light,
      ),
    );
  }
}
