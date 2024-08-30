import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:share_plus/share_plus.dart';
import 'package:flutter_template/i18n/translations.g.dart';
import 'package:flutter_template/modules/base/home/details/details_controller.dart';
import 'package:flutter_template/modules/base/home/home_route.dart';
import 'package:flutter_template/modules/base/home/model/home_item.dart';
import 'package:flutter_template/modules/base/widgets/async_image.dart';
import 'package:context_watch_signals/context_watch_signals.dart';
import 'package:flutter_template/theme/app_theme.dart';
import 'package:skeletonizer/skeletonizer.dart';

class DetailsView extends StatelessWidget {
  final String id;

  const DetailsView({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    final controller = detailsController.of(context, id);
    final state = controller.state.watch(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(context.t.home.details_title),
        leading: IconButton(
          icon: const Icon(Icons.close_rounded),
          onPressed: () {
            if (context.canPop()) {
              context.pop();
            } else {
              context.go(HomeRoute.path);
            }
          },
        ),
        actions: [
          IconButton(
            onPressed: () => Share.share(
              "${state.value?.title}... ${state.value?.description}",
            ),
            icon: const Icon(Icons.share_rounded),
          ),
        ],
      ),
      body: Skeletonizer(
        enabled: state.isLoading,
        child: state.hasError
            ? Center(child: Text(state.error.toString()))
            : _DetailsContent(
                item: state.value ??
                    HomeItem(
                      id: id,
                      title: BoneMock.title,
                      description: BoneMock.paragraph,
                      imageUrl: "",
                    ),
              ),
      ),
    );
  }
}

class _DetailsContent extends StatelessWidget {
  const _DetailsContent({
    required this.item,
  });

  final HomeItem item;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (item.imageUrl.isNotEmpty) ...[
            AsyncImage(
              url: item.imageUrl,
              width: double.infinity,
              height: 350,
              fit: BoxFit.cover,
            ),
          ] else ...[
            const Divider(
              thickness: 350,
              height: 350,
            ),
          ],
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              item.title,
              style: context.textTheme.headlineMedium,
            ),
          ),
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(item.description),
          ),
          const SizedBox(height: 12),
          if (item.tags != null && item.tags!.isNotEmpty) ...[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Wrap(
                runSpacing: 8,
                spacing: 8,
                children: item.tags!
                    .map(
                      (tag) => Chip(label: Text(tag)),
                    )
                    .toList(),
              ),
            ),
          ],
        ],
      ),
    );
  }
}
