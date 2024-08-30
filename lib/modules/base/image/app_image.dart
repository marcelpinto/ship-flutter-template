import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_image.freezed.dart';
part 'app_image.g.dart';

@freezed
sealed class AppImage with _$AppImage {

  const factory AppImage.static({
    required String uri,
  }) = StaticImage;

  const factory AppImage.network({
    required String uri,
  }) = NetworkImage;

  const factory AppImage.rive({
    required String uri,
    required String name,
  }) = RiveImage;

  factory AppImage.fromJson(Map<String, dynamic> json) => _$AppImageFromJson(json);
}
