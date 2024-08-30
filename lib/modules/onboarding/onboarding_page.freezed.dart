// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_page.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OnboardingPage _$OnboardingPageFromJson(Map<String, dynamic> json) {
  return _OnboardingPage.fromJson(json);
}

/// @nodoc
mixin _$OnboardingPage {
  String get title => throw _privateConstructorUsedError;
  String get subtitle => throw _privateConstructorUsedError;
  AppImage get image => throw _privateConstructorUsedError;

  /// Serializes this OnboardingPage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OnboardingPage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OnboardingPageCopyWith<OnboardingPage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardingPageCopyWith<$Res> {
  factory $OnboardingPageCopyWith(
          OnboardingPage value, $Res Function(OnboardingPage) then) =
      _$OnboardingPageCopyWithImpl<$Res, OnboardingPage>;
  @useResult
  $Res call({String title, String subtitle, AppImage image});

  $AppImageCopyWith<$Res> get image;
}

/// @nodoc
class _$OnboardingPageCopyWithImpl<$Res, $Val extends OnboardingPage>
    implements $OnboardingPageCopyWith<$Res> {
  _$OnboardingPageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OnboardingPage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? subtitle = null,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: null == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as AppImage,
    ) as $Val);
  }

  /// Create a copy of OnboardingPage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppImageCopyWith<$Res> get image {
    return $AppImageCopyWith<$Res>(_value.image, (value) {
      return _then(_value.copyWith(image: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OnboardingPageImplCopyWith<$Res>
    implements $OnboardingPageCopyWith<$Res> {
  factory _$$OnboardingPageImplCopyWith(_$OnboardingPageImpl value,
          $Res Function(_$OnboardingPageImpl) then) =
      __$$OnboardingPageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String subtitle, AppImage image});

  @override
  $AppImageCopyWith<$Res> get image;
}

/// @nodoc
class __$$OnboardingPageImplCopyWithImpl<$Res>
    extends _$OnboardingPageCopyWithImpl<$Res, _$OnboardingPageImpl>
    implements _$$OnboardingPageImplCopyWith<$Res> {
  __$$OnboardingPageImplCopyWithImpl(
      _$OnboardingPageImpl _value, $Res Function(_$OnboardingPageImpl) _then)
      : super(_value, _then);

  /// Create a copy of OnboardingPage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? subtitle = null,
    Object? image = null,
  }) {
    return _then(_$OnboardingPageImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: null == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as AppImage,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OnboardingPageImpl implements _OnboardingPage {
  _$OnboardingPageImpl(
      {required this.title, required this.subtitle, required this.image});

  factory _$OnboardingPageImpl.fromJson(Map<String, dynamic> json) =>
      _$$OnboardingPageImplFromJson(json);

  @override
  final String title;
  @override
  final String subtitle;
  @override
  final AppImage image;

  @override
  String toString() {
    return 'OnboardingPage(title: $title, subtitle: $subtitle, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnboardingPageImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, subtitle, image);

  /// Create a copy of OnboardingPage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnboardingPageImplCopyWith<_$OnboardingPageImpl> get copyWith =>
      __$$OnboardingPageImplCopyWithImpl<_$OnboardingPageImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OnboardingPageImplToJson(
      this,
    );
  }
}

abstract class _OnboardingPage implements OnboardingPage {
  factory _OnboardingPage(
      {required final String title,
      required final String subtitle,
      required final AppImage image}) = _$OnboardingPageImpl;

  factory _OnboardingPage.fromJson(Map<String, dynamic> json) =
      _$OnboardingPageImpl.fromJson;

  @override
  String get title;
  @override
  String get subtitle;
  @override
  AppImage get image;

  /// Create a copy of OnboardingPage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnboardingPageImplCopyWith<_$OnboardingPageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
