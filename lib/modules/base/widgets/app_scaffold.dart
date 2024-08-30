import 'package:flutter/material.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';

class AppScaffoldContent extends StatelessWidget {
  final Widget body;
  final Widget? secondaryBody;
  final double? bodyRatio;
  final bool animate;

  const AppScaffoldContent({
    Key? key,
    required this.body,
    this.secondaryBody,
    this.bodyRatio,
    this.animate = true,
  }) : super(key: key ?? const ValueKey('AppScaffold'));

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
      internalAnimations: animate,
      transitionDuration: animate ? Durations.long1 : Duration.zero,
      body: SlotLayout(
        config: <Breakpoint, SlotLayoutConfig>{
          Breakpoints.smallAndUp: SlotLayout.from(
            key: const Key('Body Small'),
            builder: (_) => secondaryBody ?? body,
          ),
          Breakpoints.largeAndUp: SlotLayout.from(
            key: const Key('Body Medium'),
            builder: (_) => body,
          ),
        },
      ),
      secondaryBody: secondaryBody == null
          ? null
          : SlotLayout(
              config: <Breakpoint, SlotLayoutConfig>{
                Breakpoints.smallAndUp: SlotLayout.from(
                  key: const Key('Body Small'),
                  builder: AdaptiveScaffold.emptyBuilder,
                ),
                Breakpoints.largeAndUp: SlotLayout.from(
                  key: const Key('Body Medium'),
                  builder: secondaryBody != null
                      ? (_) => secondaryBody!
                      : AdaptiveScaffold.emptyBuilder,
                ),
              },
            ),
      bodyRatio: bodyRatio,
    );
  }
}

class AppScaffold extends StatelessWidget {
  final int currentIndex;
  final Widget body;
  final List<NavigationDestination> destinations;
  final void Function(int) onNavigate;

  const AppScaffold({
    Key? key,
    required this.currentIndex,
    required this.body,
    required this.destinations,
    required this.onNavigate,
  }) : super(key: key ?? const ValueKey('AppScaffoldShell'));

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      useDrawer: false,
      transitionDuration: Durations.long1,
      selectedIndex: currentIndex,
      onSelectedIndexChange: onNavigate,
      destinations: destinations,
      body: (e) => body,
    );
  }
}
