import 'dart:async';

import 'package:context_watch/context_watch.dart';
import 'package:context_watch_signals/context_watch_signals.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:go_router/go_router.dart';
import 'package:lite_ref/lite_ref.dart';
import 'package:flutter_template/env/app_env.dart';
import 'package:flutter_template/i18n/translations.g.dart';
import 'package:flutter_template/app.dart';
import 'package:flutter_template/modules/base/logger.dart';
import 'package:flutter_template/modules/base/preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  LocaleSettings.useDeviceLocale();

  // Force load the preferences instance to ensure are reading before starting
  // the app. You can remove this if needed but then you'll need to replace
  // all instances of `preferences.assertInstance` and wait for the future
  await preferences.instance;
  // Set up GoRouter for web
  GoRouter.optionURLReflectsImperativeAPIs = true;
  usePathUrlStrategy();
  runApp(
    LiteRefScope(
      child: TranslationProvider(
        child: ContextWatch.root(
          additionalWatchers: [
            SignalContextWatcher.instance,
          ],
          child: const MainApp(),
        ),
      ),
    ),
  );
}
