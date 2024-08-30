import 'package:flutter/material.dart';
import 'package:flutter_template/theme/app_theme.dart';

class TextSeparator extends StatelessWidget {
  final String label;
  final Color? lineColor;
  final bool vertical;

  const TextSeparator({
    super.key,
    required this.label,
    this.lineColor,
    this.vertical = false,
  });

  @override
  Widget build(BuildContext context) {
    final color = lineColor ?? context.theme.colorScheme.primary.withAlpha(150);
    return _rowOrColumn(
      isRow: !vertical,
      children: [
        Expanded(
          child: vertical? VerticalDivider(color: color) : Divider(color: color),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            label,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.labelSmall,
          ),
        ),
        Expanded(
          child: vertical? VerticalDivider(color: color) : Divider(color: color),
        ),
      ],
    );
  }

  Widget _rowOrColumn({required bool isRow, required List<Widget> children}) {
    if (isRow) {
      return Row(children: children);
    } else {
      return Column(children: children);
    }
  }
}
