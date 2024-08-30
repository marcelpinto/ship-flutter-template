// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onboarding_page.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OnboardingPageImpl _$$OnboardingPageImplFromJson(Map<String, dynamic> json) =>
    _$OnboardingPageImpl(
      title: json['title'] as String,
      subtitle: json['subtitle'] as String,
      image: AppImage.fromJson(json['image'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OnboardingPageImplToJson(
        _$OnboardingPageImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'subtitle': instance.subtitle,
      'image': instance.image,
    };
