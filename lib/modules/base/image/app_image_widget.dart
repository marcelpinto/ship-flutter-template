import 'package:flutter/material.dart';
import 'package:rive/rive.dart' as rive;
import 'package:flutter_template/modules/base/image/app_image.dart';
import 'package:flutter_template/modules/base/widgets/async_image.dart';

class AppImageWidget extends StatelessWidget {
  final AppImage image;
  final double width;
  final double height;
  final BoxFit? fit;

  const AppImageWidget({
    super.key,
    required this.image,
    required this.width,
    required this.height,
    this.fit,
  });

  @override
  Widget build(BuildContext context) {
    return image.map(
      static: (value) => Image.asset(
        value.uri,
        width: width,
        height: height,
        fit: fit,
      ),
      network: (value) => AsyncImage(
        url: value.uri,
        width: width,
        height: height,
        fit: fit,
      ),
      rive: (value) => RiveImageWidget(
        uri: value.uri,
        name: value.name,
        width: width,
        height: height,
        fit: fit,
      ),
    );
  }
}

class RiveImageWidget extends StatefulWidget {
  final String uri;
  final String name;
  final double width;
  final double height;
  final BoxFit? fit;

  const RiveImageWidget({
    super.key,
    required this.uri,
    required this.name,
    required this.width,
    required this.height,
    this.fit,
  });

  @override
  State<RiveImageWidget> createState() => _RiveImageWidgetState();
}

class _RiveImageWidgetState extends State<RiveImageWidget> {
  late final rive.RiveAnimationController _controller;

  @override
  void initState() {
    _controller = rive.SimpleAnimation(
      widget.name,
      autoplay: true,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: widget.width,
        height: widget.height,
        child: rive.RiveAnimation.asset(
          widget.uri,
          fit: widget.fit,
          animations: [widget.name],
          controllers: [_controller],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
