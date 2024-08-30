import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template/theme/app_theme.dart';
import 'package:universal_io/io.dart';

void showSuccessToast({
  required BuildContext context,
  required String title,
  required String text,
  Duration duration = const Duration(seconds: 2),
  Widget? mainButton,
}) {
  // This is a hack to prevent the toast from showing during tests
  if (Platform.environment.containsKey('FLUTTER_TEST')) {
    return;
  }
  Flushbar(
    flushbarPosition: FlushbarPosition.TOP,
    title: title,
    message: text,
    titleSize: 21,
    messageSize: 16,
    duration: duration,
    leftBarIndicatorColor: context.theme.colorScheme.primary,
    mainButton: mainButton,
    titleColor: context.theme.colorScheme.onSurface,
    messageColor: context.theme.colorScheme.onSurface,
    backgroundColor: context.theme.colorScheme.surfaceContainer,
  ).show(context);
}

void showErrorToast({
  required BuildContext context,
  required String title,
  required String text,
  Duration duration = const Duration(seconds: 2),
  String? reason,
  Widget? mainButton,
}) {
  // This is a hack to prevent the toast from showing during tests
  if (Platform.environment.containsKey('FLUTTER_TEST')) {
    return;
  }
  Flushbar(
    flushbarPosition: FlushbarPosition.TOP,
    title: title,
    message: text,
    titleSize: 21,
    messageSize: 16,
    duration: duration,
    mainButton: mainButton,
    backgroundColor: context.theme.colorScheme.surfaceContainer,
    titleColor: context.theme.colorScheme.onSurface,
    messageColor: context.theme.colorScheme.onSurface,
    leftBarIndicatorColor: context.theme.colorScheme.error,
    icon: Icon(
      Icons.error,
      color: context.theme.colorScheme.onSurfaceVariant,
    ),
  ).show(context);
}
