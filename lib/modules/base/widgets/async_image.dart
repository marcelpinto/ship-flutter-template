import 'dart:math';

import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template/theme/app_theme.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:universal_io/io.dart';

class AsyncImage extends StatelessWidget {
  const AsyncImage({
    super.key,
    required this.url,
    this.width,
    this.height,
    this.fit,
  });

  final String url;
  final double? width;
  final double? height;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    if (!kIsWeb && !url.startsWith("http")) {
      return Image.file(
        File(url),
        width: width,
        height: height,
        fit: fit,
        frameBuilder: _frameBuilder(),
        errorBuilder: _errorWidgetBuilder(),
      );
    }
    return Image.network(
      url,
      width: width,
      height: height,
      fit: fit,
      frameBuilder: _frameBuilder(),
      errorBuilder: _errorWidgetBuilder(),
    );
  }

  ImageErrorWidgetBuilder _errorWidgetBuilder() {
    return (context, error, stackTrace) {
      return SizedBox(
        width: width,
        height: height,
        child: Center(
          child: Icon(
            Icons.image_not_supported_rounded,
            size: min(128, height ?? width ?? 24),
          ),
        ),
      );
    };
  }

  ImageFrameBuilder _frameBuilder() {
    return (context, child, frame, wasSynchronouslyLoaded) {
      if (wasSynchronouslyLoaded) {
        return child;
      }
      return DelayedDisplay(
        delay: Durations.long1,
        slidingBeginOffset: const Offset(0, 0),
        child: Skeletonizer(
          effect: ShimmerEffect.raw(
            colors: [
              context.theme.colorScheme.surfaceContainer,
              context.theme.colorScheme.surfaceContainerHigh,
              context.theme.colorScheme.surfaceContainerHighest,
              context.theme.colorScheme.surfaceContainerHigh,
              context.theme.colorScheme.surfaceContainer,
            ],
            duration: Durations.extralong4,
            lowerBound: -1,
            upperBound: 1,
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          enableSwitchAnimation: true,
          enabled: frame == null,
          child: frame == null
              ? SizedBox(
                  width: width,
                  height: height,
                  child: child,
                )
              : child,
        ),
      );
    };
  }
}
