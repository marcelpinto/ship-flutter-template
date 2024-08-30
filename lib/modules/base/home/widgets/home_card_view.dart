import 'package:flutter/material.dart';
import 'package:flutter_template/theme/app_theme.dart';

class HomeCardView extends StatelessWidget {
  final String title;
  final String content;
  final Widget? image;
  final bool selected;
  final bool dense;
  final List<Widget>? actions;
  final VoidCallback? onTap;

  const HomeCardView({
    super.key,
    required this.title,
    required this.content,
    this.selected = false,
    this.dense = false,
    this.image,
    this.actions,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    if (selected) {
      WidgetsBinding.instance.addPostFrameCallback(
        (duration) => Scrollable.ensureVisible(
          context,
          alignment: 0.5,
          curve: Curves.decelerate,
          duration: const Duration(milliseconds: 300),
        ),
      );
    }
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
      child: ListTile(
        dense: dense,
        title: Text(
          title,
          style: context.textTheme.titleMedium,
          maxLines: dense ? 1 : null,
          overflow: TextOverflow.ellipsis,
        ),
        onTap: onTap,
        leading: image,
        titleAlignment: ListTileTitleAlignment.titleHeight,
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              content,
              textAlign: TextAlign.start,
              maxLines: dense ? 1 : null,
              overflow: TextOverflow.fade,
            ),
            if (actions != null && actions!.isNotEmpty) ...[
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: actions ?? [],
              ),
            ],
          ],
        ),
        contentPadding: const EdgeInsets.all(16),
      ),
    );
  }
}
