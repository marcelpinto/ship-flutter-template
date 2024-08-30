import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_template/theme/app_theme.dart';
import 'package:vector_graphics/vector_graphics.dart';

class CircleButton extends StatelessWidget {
  final VectorGraphic svg;
  final VoidCallback onPressed;
  final Color? lineColor;

  const CircleButton({
    super.key,
    required this.svg,
    required this.onPressed,
    this.lineColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: (svg.width ?? svg.height ?? 24) * 2.4,
      decoration: BoxDecoration(
        border: Border.all(
          color: lineColor ?? context.theme.colorScheme.primary.withAlpha(150),
        ),
        shape: BoxShape.circle,
      ),
      child: RawMaterialButton(
        elevation: 0,
        onPressed: () {
          HapticFeedback.mediumImpact();
          onPressed();
        },
        shape: const CircleBorder(),
        fillColor: Colors.transparent,
        padding: const EdgeInsets.all(16),
        child: svg,
      ),
    );
  }
}
