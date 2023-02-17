// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crumpet_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CrumpetComponent _$CrumpetComponentFromJson(Map<String, dynamic> json) =>
    CrumpetComponent(
      type: $enumDecode(_$ComponentTypeEnumMap, json['type']),
      triggerEvent: json['trigger_event'] as String,
      backgroundColor: json['background_color'] as String,
      backgroundImageUrl: json['background_image_url'] as String,
      body: CrumpetElement.fromJson(json['body'] as Map<String, dynamic>),
      componentId: json['component_id'] as int,
    );

Map<String, dynamic> _$CrumpetComponentToJson(CrumpetComponent instance) =>
    <String, dynamic>{
      'component_id': instance.componentId,
      'type': _$ComponentTypeEnumMap[instance.type]!,
      'trigger_event': instance.triggerEvent,
      'background_color': instance.backgroundColor,
      'background_image_url': instance.backgroundImageUrl,
      'body': instance.body,
    };

const _$ComponentTypeEnumMap = {
  ComponentType.fullPageCard: 'full_page_card',
  ComponentType.fullPageCarousel: 'full_page_carousel',
};
