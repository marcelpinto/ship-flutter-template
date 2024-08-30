// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeItemImpl _$$HomeItemImplFromJson(Map<String, dynamic> json) =>
    _$HomeItemImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      imageUrl: json['imageUrl'] as String,
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$HomeItemImplToJson(_$HomeItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
      'tags': instance.tags,
    };
