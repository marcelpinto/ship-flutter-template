// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HomeItem _$HomeItemFromJson(Map<String, dynamic> json) {
  return _HomeItem.fromJson(json);
}

/// @nodoc
mixin _$HomeItem {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  List<String>? get tags => throw _privateConstructorUsedError;

  /// Serializes this HomeItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HomeItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeItemCopyWith<HomeItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeItemCopyWith<$Res> {
  factory $HomeItemCopyWith(HomeItem value, $Res Function(HomeItem) then) =
      _$HomeItemCopyWithImpl<$Res, HomeItem>;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      String imageUrl,
      List<String>? tags});
}

/// @nodoc
class _$HomeItemCopyWithImpl<$Res, $Val extends HomeItem>
    implements $HomeItemCopyWith<$Res> {
  _$HomeItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? imageUrl = null,
    Object? tags = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeItemImplCopyWith<$Res>
    implements $HomeItemCopyWith<$Res> {
  factory _$$HomeItemImplCopyWith(
          _$HomeItemImpl value, $Res Function(_$HomeItemImpl) then) =
      __$$HomeItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      String imageUrl,
      List<String>? tags});
}

/// @nodoc
class __$$HomeItemImplCopyWithImpl<$Res>
    extends _$HomeItemCopyWithImpl<$Res, _$HomeItemImpl>
    implements _$$HomeItemImplCopyWith<$Res> {
  __$$HomeItemImplCopyWithImpl(
      _$HomeItemImpl _value, $Res Function(_$HomeItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? imageUrl = null,
    Object? tags = freezed,
  }) {
    return _then(_$HomeItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeItemImpl implements _HomeItem {
  const _$HomeItemImpl(
      {required this.id,
      required this.title,
      required this.description,
      required this.imageUrl,
      final List<String>? tags})
      : _tags = tags;

  factory _$HomeItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeItemImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final String imageUrl;
  final List<String>? _tags;
  @override
  List<String>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HomeItem(id: $id, title: $title, description: $description, imageUrl: $imageUrl, tags: $tags)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, description, imageUrl,
      const DeepCollectionEquality().hash(_tags));

  /// Create a copy of HomeItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeItemImplCopyWith<_$HomeItemImpl> get copyWith =>
      __$$HomeItemImplCopyWithImpl<_$HomeItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeItemImplToJson(
      this,
    );
  }
}

abstract class _HomeItem implements HomeItem {
  const factory _HomeItem(
      {required final String id,
      required final String title,
      required final String description,
      required final String imageUrl,
      final List<String>? tags}) = _$HomeItemImpl;

  factory _HomeItem.fromJson(Map<String, dynamic> json) =
      _$HomeItemImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  String get imageUrl;
  @override
  List<String>? get tags;

  /// Create a copy of HomeItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeItemImplCopyWith<_$HomeItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
