import 'package:context_watch_signals/context_watch_signals.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_template/i18n/translations.g.dart';
import 'package:flutter_template/modules/base/about/about_route.dart';
import 'package:flutter_template/modules/base/settings/settings_route.dart';
import 'package:flutter_template/navigation.dart';
import 'package:flutter_template/modules/base/settings/settings_controller.dart';
import 'package:flutter_template/theme/app_theme.dart';
import 'package:flutter_template/modules/base/widgets/app_error_widget.dart';
import 'package:flutter_template/modules/base/home/home_route.dart';

/// The Widget that configures your application.
class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  late final GoRouter _config;

  @override
  void initState() {
    _config = createRouter(
      initialLocation: HomeRoute.path,
      redirect: (context, state) async {
        return null;
      },
      navigationRoutes: [
        HomeRoute(),
        AboutRoute(),
        SettingsRoute(),
      ],
      otherRoutes: [
      ],
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // Display a custom error view
    ErrorWidget.builder = (errorDetails) {
      return AppErrorWidget(errorDetails: errorDetails);
    };

    return MaterialApp.router(
      // Providing a restorationScopeId allows the Navigator built by the
      // MaterialApp to restore the navigation stack when a user leaves and
      // returns to the app after it has been killed while running in the
      // background.
      restorationScopeId: 'app',
      locale: TranslationProvider.of(context).flutterLocale, // use provider
      supportedLocales: AppLocaleUtils.supportedLocales,
      localizationsDelegates: GlobalMaterialLocalizations.delegates,
      // Use AppLocalizations to configure the correct application title
      // depending on the user's locale.
      //
      // The appTitle is defined in .arb files found in the localization
      // directory.
      onGenerateTitle: (BuildContext context) => context.t.app_name,

      // Define a light and dark color theme. Then, read the user's
      // preferred ThemeMode (light, dark, or system default) from the
      // SettingsController to display the correct theme.
      theme: lightTheme,
      darkTheme: darkTheme,
      debugShowCheckedModeBanner: false,
      themeMode: settingsController.instance.themeMode.watch(context),
      routerConfig: _config,
    );
  }
}
