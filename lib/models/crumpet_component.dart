import 'dart:ui';

import 'package:json_annotation/json_annotation.dart';

import 'crumpet_element.dart';

part 'crumpet_component.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class CrumpetComponent {
  final int componentId;
  final ComponentType type;
  final String triggerEvent;
  final String backgroundColor;
  final String backgroundImageUrl;
  final CrumpetElement body;

  CrumpetComponent({
    required this.type,
    required this.triggerEvent,
    required this.backgroundColor,
    required this.backgroundImageUrl,
    required this.body,
    required this.componentId,
  });

  /// Connect the generated [_$ComponentFromJson] function to the `fromJson`
  /// factory.
  factory CrumpetComponent.fromJson(Map<String, dynamic> json) =>
      _$CrumpetComponentFromJson(json);

  /// Connect the generated [_$ComponentFromJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$CrumpetComponentToJson(this);
}

@JsonEnum(valueField: 'type')
enum ComponentType {
  @JsonValue("full_page_card")
  fullPageCard,
  @JsonValue("full_page_carousel")
  fullPageCarousel
}
