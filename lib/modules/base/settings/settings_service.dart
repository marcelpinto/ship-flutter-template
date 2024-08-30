import 'package:flutter/material.dart';
import 'package:flutter_template/modules/base/preferences.dart';

/// A service that stores and retrieves user settings.
///
/// By default, this class does not persist user settings. If you'd like to
/// persist the user settings locally, use the shared_preferences package. If
/// you'd like to store settings on a web server, use the http package.
class SettingsService {
  /// Loads the User's preferred ThemeMode from local or remote storage.
  ThemeMode themeMode() {
    final current = preferences.assertInstance.get("theme_mode");
    if (current == null) {
      return ThemeMode.system;
    }
    return ThemeMode.values.firstWhere(
      (element) => element.name == current,
    );
  }

  /// Persists the user's preferred ThemeMode to local or remote storage.
  Future<void> updateThemeMode(ThemeMode theme) {
    return preferences.assertInstance.setString("theme_mode", theme.name);
  }
}
