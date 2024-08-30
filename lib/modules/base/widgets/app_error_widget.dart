import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_template/i18n/translations.g.dart';
import 'package:flutter_template/theme/app_theme.dart';
import 'package:universal_html/html.dart' as html;

class AppErrorWidget extends StatelessWidget {
  final FlutterErrorDetails? errorDetails;

  const AppErrorWidget({super.key, this.errorDetails});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 700),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: Text(
                  context.t.errors.error_view.title,
                  style: context.textTheme.displaySmall!.copyWith(
                    color: context.theme.colorScheme.error,
                  ),
                ),
              ),
              Text(
                context.t.errors.error_view.content,
                style: context.textTheme.bodyLarge,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 24.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    OutlinedButton.icon(
                      onPressed: () {
                        if (kIsWeb) {
                          html.window.location.reload();
                          return;
                        }
                        SystemNavigator.pop();
                      },
                      icon: Icon(
                        Icons.close_rounded,
                        color: context.theme.colorScheme.error,
                      ),
                      label: Text(
                        context.t.errors.error_view.exit,
                        style: context.textTheme.bodyMedium?.copyWith(
                          color: context.theme.colorScheme.error,
                        ),
                      ),
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(
                          width: 1,
                          color: context.theme.colorScheme.error,
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    FilledButton.icon(
                      onPressed: () => context.go("/"),
                      icon: const Icon(Icons.home_rounded),
                      label: Text(context.t.errors.error_view.back),
                      style: FilledButton.styleFrom(
                        backgroundColor: context.theme.colorScheme.error,
                      ),
                    ),
                  ],
                ),
              ),
              if (kDebugMode && errorDetails != null) ...[
                SingleChildScrollView(
                  child: Text(
                    errorDetails!.exceptionAsString(),
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
