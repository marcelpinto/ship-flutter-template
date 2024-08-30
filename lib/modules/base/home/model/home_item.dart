import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_item.freezed.dart';
part 'home_item.g.dart';

@freezed
class HomeItem with _$HomeItem {
  const factory HomeItem({
    required String id,
    required String title,
    required String description,
    required String imageUrl,
    List<String>? tags,
  }) = _HomeItem;

  factory HomeItem.fromJson(Map<String, dynamic> json) =>
      _$HomeItemFromJson(json);
}
