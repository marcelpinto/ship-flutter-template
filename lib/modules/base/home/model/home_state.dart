import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_template/modules/base/home/model/home_item.dart';

part 'home_state.freezed.dart';
part 'home_state.g.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required bool showBanner,
    required List<HomeItem> items,
  }) = _HomeState;

  factory HomeState.fromJson(Map<String, dynamic> json) =>
      _$HomeStateFromJson(json);
}
