import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_template/i18n/translations.g.dart';
import 'package:flutter_template/modules/base/home/home_controller.dart';
import 'package:flutter_template/modules/base/home/model/home_item.dart';
import 'package:flutter_template/modules/base/home/model/home_state.dart';
import 'package:flutter_template/modules/base/home/widgets/home_card_view.dart';
import 'package:flutter_template/modules/base/widgets/async_image.dart';
import 'package:flutter_template/theme/app_theme.dart';
import 'package:context_watch_signals/context_watch_signals.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeView extends StatelessWidget {
  final String? selectedId;

  const HomeView({
    super.key,
    this.selectedId,
  });

  @override
  Widget build(BuildContext context) {
    final state = homeController.of(context).state.watch(context);
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          clipBehavior: Clip.none,
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  context.t.home.title,
                  style: context.textTheme.headlineLarge,
                ),
                Text(
                  context.t.home.subtitle,
                  style: context.textTheme.labelLarge,
                ),
                const SizedBox(height: 24),
                Skeletonizer(
                  enabled: state.isLoading,
                  child: _buildFeed(state),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFeed(AsyncState<HomeState> state) {
    if (state.hasError) {
      return Center(child: Text(state.error.toString()));
    }

    final items = state.value?.items ?? List.empty(growable: true);
    if (items.isEmpty && state.isLoading) {
      for (int i = 0; i < 3; i++) {
        items.add(
          HomeItem(
            id: "$i",
            title: BoneMock.name,
            description: BoneMock.paragraph,
            imageUrl: "",
          ),
        );
      }
    }
    return _HomeFeed(
      isLoading: state.isLoading,
      showBanner: state.value?.showBanner ?? false,
      selectedId: selectedId,
      items: items,
    );
  }
}

class _HomeFeed extends StatelessWidget {
  final bool isLoading;
  final String? selectedId;
  final bool showBanner;
  final List<HomeItem> items;

  const _HomeFeed({
    required this.isLoading,
    required this.showBanner,
    required this.selectedId,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (showBanner) ...[
          HomeCardView(
            title: context.t.home.cta.title,
            content: context.t.home.cta.content,
            image: const Icon(Icons.rocket_launch_rounded, size: 48),
            actions: [
              FilledButton(
                onPressed: () => launchUrl(Uri.parse(context.t.home.cta.link)),
                child: Text(context.t.home.cta.button),
              ),
            ],
          ),
          const SizedBox(height: 18),
        ],
        ...items.map(
          (e) => HomeCardView(
            title: e.title,
            content: e.description,
            dense: true,
            selected: e.id == selectedId,
            image: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: e.imageUrl.isNotEmpty
                  ? AsyncImage(url: e.imageUrl, width: 48)
                  : const Bone.icon(size: 48),
            ),
            onTap: () {
              if (context.canPop()) {
                context.pushReplacement("/home/${e.id}");
              } else {
                context.push("/home/${e.id}");
              }
            },
          ),
        ),
      ],
    );
  }
}
