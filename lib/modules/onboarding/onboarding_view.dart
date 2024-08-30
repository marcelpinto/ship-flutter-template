import 'package:flutter/material.dart';
import 'package:flutter_template/i18n/translations.g.dart';
import 'package:flutter_template/modules/base/widgets/responsive_layout.dart';
import 'package:flutter_template/modules/onboarding/onboarding_controller.dart';
import 'package:flutter_template/modules/base/image/app_image_widget.dart';
import 'package:flutter_template/theme/app_theme.dart';
import 'package:context_watch_signals/context_watch_signals.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  @override
  Widget build(BuildContext context) {
    final controller = onboardingController(context);
    final pages = controller.pages;
    final index = controller.currentIndex.watch(context);
    return Scaffold(
      body: SafeArea(
        child: ResponsiveLayout(
          small: Column(
            children: [
              const SizedBox(height: 16),
              Expanded(
                child: _withAnimation(
                  AppImageWidget(
                    image: pages[index].image,
                    width: 200,
                    height: 200,
                  ),
                ),
              ),
              Expanded(
                child: AnimatedSwitcher(
                  duration: Durations.extralong1,
                  child: _withAnimation(
                    _buildHeroText(
                      pages[index].title,
                      pages[index].subtitle,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: _navigationBar(index == pages.length - 1),
                ),
              ),
            ],
          ),
          large: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: _withAnimation(
                  AppImageWidget(
                    image: pages[index].image,
                    width: 250,
                    height: 200,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    _withAnimation(
                      ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 480),
                        child: _buildHeroText(
                          pages[index].title,
                          pages[index].subtitle,
                        ),
                      ),
                    ),
                    const SizedBox(height: 24.0),
                    _navigationBar(index == pages.length - 1),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeroText(String title, String text) {
    return Padding(
      key: ValueKey("hero-text-$title"),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Text(
            title,
            style: context.textTheme.titleLarge,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          Text(
            text,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _navigationBar(bool isEnd) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
          onPressed: () => onboardingController(context).skip(),
          child: Text(
            isEnd ? context.t.onboarding.not_now : context.t.onboarding.skip,
            style: TextStyle(
              color: context.theme.colorScheme.primary.withAlpha(180),
            ),
          ),
        ),
        const SizedBox(width: 8),
        FloatingActionButton.extended(
          onPressed: () => onboardingController(context).next(),
          label: AnimatedSwitcher(
            duration: Durations.extralong1,
            child: isEnd
                ? Row(
                    key: const ValueKey("nav-button"),
                    children: [
                      Text(onboardingController(context).destinationLabel),
                      const Padding(
                        padding: EdgeInsets.only(left: 4.0),
                        child: Icon(
                          Icons.chevron_right_rounded,
                        ),
                      ),
                    ],
                  )
                : const Icon(
                    key: ValueKey("nav-button"),
                    Icons.chevron_right_rounded,
                  ),
          ),
        ),
      ],
    );
  }

  Widget _withAnimation(Widget child) {
    return AnimatedSwitcher(
      duration: Durations.extralong1,
      switchInCurve: Curves.easeInOut,
      switchOutCurve: Curves.fastOutSlowIn,
      layoutBuilder: (currentChild, previousChildren) => currentChild!,
      transitionBuilder: (child, animation) {
        return SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(0, 0.1),
            end: const Offset(0, 0),
          ).animate(
            CurvedAnimation(
              parent: animation,
              curve: Curves.easeInOut,
            ),
          ),
          child: FadeTransition(
            opacity: Tween<double>(
              begin: 0.2,
              end: 1,
            ).animate(
              CurvedAnimation(
                parent: animation,
                curve: Curves.easeInOut,
              ),
            ),
            child: child,
          ),
        );
      },
      child: child,
    );
  }
}
