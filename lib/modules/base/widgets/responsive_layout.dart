import 'package:flutter/widgets.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget small;
  final Widget? medium;
  final Widget? large;

  const ResponsiveLayout({
    super.key,
    required this.small,
    this.medium,
    this.large,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (Breakpoints.largeAndUp.isActive(context)) {
          return large ?? medium ?? small;
        } else if (Breakpoints.mediumAndUp.isActive(context)) {
          return medium ?? small;
        } else {
          return small;
        }
      },
    );
  }
}
