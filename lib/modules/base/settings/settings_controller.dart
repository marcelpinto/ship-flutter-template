import 'package:context_watch_signals/context_watch_signals.dart';
import 'package:flutter/material.dart';
import 'package:lite_ref/lite_ref.dart';

import 'settings_service.dart';

final settingsController = Ref.singleton(
  () => SettingsController(
    SettingsService(),
  ),
);

/// A class that many Widgets can interact with to read user settings, update
/// user settings, or listen to user settings changes.
///
/// Controllers glue Data Services to Flutter Widgets. The SettingsController
/// uses the SettingsService to store and retrieve user settings.
class SettingsController {
  SettingsController(this._settingsService);

  // Make SettingsService a private variable so it is not used directly.
  final SettingsService _settingsService;

  late final _themeMode = _settingsService.themeMode().asSignal();
  ReadonlySignal<ThemeMode> get themeMode => _themeMode;

  Future<void> dispatch(ThemeMode mode) {
    _themeMode.value = mode;
    return _settingsService.updateThemeMode(mode);
  }
}
