// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppImage _$AppImageFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'static':
      return StaticImage.fromJson(json);
    case 'network':
      return NetworkImage.fromJson(json);
    case 'rive':
      return RiveImage.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'AppImage',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$AppImage {
  String get uri => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uri) static,
    required TResult Function(String uri) network,
    required TResult Function(String uri, String name) rive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String uri)? static,
    TResult? Function(String uri)? network,
    TResult? Function(String uri, String name)? rive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uri)? static,
    TResult Function(String uri)? network,
    TResult Function(String uri, String name)? rive,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StaticImage value) static,
    required TResult Function(NetworkImage value) network,
    required TResult Function(RiveImage value) rive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StaticImage value)? static,
    TResult? Function(NetworkImage value)? network,
    TResult? Function(RiveImage value)? rive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StaticImage value)? static,
    TResult Function(NetworkImage value)? network,
    TResult Function(RiveImage value)? rive,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this AppImage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppImageCopyWith<AppImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppImageCopyWith<$Res> {
  factory $AppImageCopyWith(AppImage value, $Res Function(AppImage) then) =
      _$AppImageCopyWithImpl<$Res, AppImage>;
  @useResult
  $Res call({String uri});
}

/// @nodoc
class _$AppImageCopyWithImpl<$Res, $Val extends AppImage>
    implements $AppImageCopyWith<$Res> {
  _$AppImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = null,
  }) {
    return _then(_value.copyWith(
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StaticImageImplCopyWith<$Res>
    implements $AppImageCopyWith<$Res> {
  factory _$$StaticImageImplCopyWith(
          _$StaticImageImpl value, $Res Function(_$StaticImageImpl) then) =
      __$$StaticImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String uri});
}

/// @nodoc
class __$$StaticImageImplCopyWithImpl<$Res>
    extends _$AppImageCopyWithImpl<$Res, _$StaticImageImpl>
    implements _$$StaticImageImplCopyWith<$Res> {
  __$$StaticImageImplCopyWithImpl(
      _$StaticImageImpl _value, $Res Function(_$StaticImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = null,
  }) {
    return _then(_$StaticImageImpl(
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StaticImageImpl implements StaticImage {
  const _$StaticImageImpl({required this.uri, final String? $type})
      : $type = $type ?? 'static';

  factory _$StaticImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$StaticImageImplFromJson(json);

  @override
  final String uri;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AppImage.static(uri: $uri)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StaticImageImpl &&
            (identical(other.uri, uri) || other.uri == uri));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, uri);

  /// Create a copy of AppImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StaticImageImplCopyWith<_$StaticImageImpl> get copyWith =>
      __$$StaticImageImplCopyWithImpl<_$StaticImageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uri) static,
    required TResult Function(String uri) network,
    required TResult Function(String uri, String name) rive,
  }) {
    return static(uri);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String uri)? static,
    TResult? Function(String uri)? network,
    TResult? Function(String uri, String name)? rive,
  }) {
    return static?.call(uri);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uri)? static,
    TResult Function(String uri)? network,
    TResult Function(String uri, String name)? rive,
    required TResult orElse(),
  }) {
    if (static != null) {
      return static(uri);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StaticImage value) static,
    required TResult Function(NetworkImage value) network,
    required TResult Function(RiveImage value) rive,
  }) {
    return static(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StaticImage value)? static,
    TResult? Function(NetworkImage value)? network,
    TResult? Function(RiveImage value)? rive,
  }) {
    return static?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StaticImage value)? static,
    TResult Function(NetworkImage value)? network,
    TResult Function(RiveImage value)? rive,
    required TResult orElse(),
  }) {
    if (static != null) {
      return static(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$StaticImageImplToJson(
      this,
    );
  }
}

abstract class StaticImage implements AppImage {
  const factory StaticImage({required final String uri}) = _$StaticImageImpl;

  factory StaticImage.fromJson(Map<String, dynamic> json) =
      _$StaticImageImpl.fromJson;

  @override
  String get uri;

  /// Create a copy of AppImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StaticImageImplCopyWith<_$StaticImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NetworkImageImplCopyWith<$Res>
    implements $AppImageCopyWith<$Res> {
  factory _$$NetworkImageImplCopyWith(
          _$NetworkImageImpl value, $Res Function(_$NetworkImageImpl) then) =
      __$$NetworkImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String uri});
}

/// @nodoc
class __$$NetworkImageImplCopyWithImpl<$Res>
    extends _$AppImageCopyWithImpl<$Res, _$NetworkImageImpl>
    implements _$$NetworkImageImplCopyWith<$Res> {
  __$$NetworkImageImplCopyWithImpl(
      _$NetworkImageImpl _value, $Res Function(_$NetworkImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = null,
  }) {
    return _then(_$NetworkImageImpl(
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NetworkImageImpl implements NetworkImage {
  const _$NetworkImageImpl({required this.uri, final String? $type})
      : $type = $type ?? 'network';

  factory _$NetworkImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$NetworkImageImplFromJson(json);

  @override
  final String uri;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AppImage.network(uri: $uri)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkImageImpl &&
            (identical(other.uri, uri) || other.uri == uri));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, uri);

  /// Create a copy of AppImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NetworkImageImplCopyWith<_$NetworkImageImpl> get copyWith =>
      __$$NetworkImageImplCopyWithImpl<_$NetworkImageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uri) static,
    required TResult Function(String uri) network,
    required TResult Function(String uri, String name) rive,
  }) {
    return network(uri);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String uri)? static,
    TResult? Function(String uri)? network,
    TResult? Function(String uri, String name)? rive,
  }) {
    return network?.call(uri);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uri)? static,
    TResult Function(String uri)? network,
    TResult Function(String uri, String name)? rive,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network(uri);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StaticImage value) static,
    required TResult Function(NetworkImage value) network,
    required TResult Function(RiveImage value) rive,
  }) {
    return network(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StaticImage value)? static,
    TResult? Function(NetworkImage value)? network,
    TResult? Function(RiveImage value)? rive,
  }) {
    return network?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StaticImage value)? static,
    TResult Function(NetworkImage value)? network,
    TResult Function(RiveImage value)? rive,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$NetworkImageImplToJson(
      this,
    );
  }
}

abstract class NetworkImage implements AppImage {
  const factory NetworkImage({required final String uri}) = _$NetworkImageImpl;

  factory NetworkImage.fromJson(Map<String, dynamic> json) =
      _$NetworkImageImpl.fromJson;

  @override
  String get uri;

  /// Create a copy of AppImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NetworkImageImplCopyWith<_$NetworkImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RiveImageImplCopyWith<$Res>
    implements $AppImageCopyWith<$Res> {
  factory _$$RiveImageImplCopyWith(
          _$RiveImageImpl value, $Res Function(_$RiveImageImpl) then) =
      __$$RiveImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String uri, String name});
}

/// @nodoc
class __$$RiveImageImplCopyWithImpl<$Res>
    extends _$AppImageCopyWithImpl<$Res, _$RiveImageImpl>
    implements _$$RiveImageImplCopyWith<$Res> {
  __$$RiveImageImplCopyWithImpl(
      _$RiveImageImpl _value, $Res Function(_$RiveImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = null,
    Object? name = null,
  }) {
    return _then(_$RiveImageImpl(
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RiveImageImpl implements RiveImage {
  const _$RiveImageImpl(
      {required this.uri, required this.name, final String? $type})
      : $type = $type ?? 'rive';

  factory _$RiveImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$RiveImageImplFromJson(json);

  @override
  final String uri;
  @override
  final String name;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AppImage.rive(uri: $uri, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RiveImageImpl &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, uri, name);

  /// Create a copy of AppImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RiveImageImplCopyWith<_$RiveImageImpl> get copyWith =>
      __$$RiveImageImplCopyWithImpl<_$RiveImageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uri) static,
    required TResult Function(String uri) network,
    required TResult Function(String uri, String name) rive,
  }) {
    return rive(uri, name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String uri)? static,
    TResult? Function(String uri)? network,
    TResult? Function(String uri, String name)? rive,
  }) {
    return rive?.call(uri, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uri)? static,
    TResult Function(String uri)? network,
    TResult Function(String uri, String name)? rive,
    required TResult orElse(),
  }) {
    if (rive != null) {
      return rive(uri, name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StaticImage value) static,
    required TResult Function(NetworkImage value) network,
    required TResult Function(RiveImage value) rive,
  }) {
    return rive(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StaticImage value)? static,
    TResult? Function(NetworkImage value)? network,
    TResult? Function(RiveImage value)? rive,
  }) {
    return rive?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StaticImage value)? static,
    TResult Function(NetworkImage value)? network,
    TResult Function(RiveImage value)? rive,
    required TResult orElse(),
  }) {
    if (rive != null) {
      return rive(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$RiveImageImplToJson(
      this,
    );
  }
}

abstract class RiveImage implements AppImage {
  const factory RiveImage(
      {required final String uri,
      required final String name}) = _$RiveImageImpl;

  factory RiveImage.fromJson(Map<String, dynamic> json) =
      _$RiveImageImpl.fromJson;

  @override
  String get uri;
  String get name;

  /// Create a copy of AppImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RiveImageImplCopyWith<_$RiveImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
