// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crumpet_element_properties.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CrumpetColumnProperties _$CrumpetColumnPropertiesFromJson(
        Map<String, dynamic> json) =>
    CrumpetColumnProperties(
      marginTop: json['margin_top'] as int,
      marginBottom: json['margin_bottom'] as int,
      marginLeft: json['margin_left'] as int,
      marginRight: json['margin_right'] as int,
      paddingTop: json['padding_top'] as int,
      paddingBottom: json['padding_bottom'] as int,
      paddingLeft: json['padding_left'] as int,
      paddingRight: json['padding_right'] as int,
      mainAxisAlignment: $enumDecode(
          _$CrumpetAxisAlignmentEnumMap, json['main_axis_alignment']),
      crossAxisAlignment: $enumDecode(
          _$CrumpetAxisAlignmentEnumMap, json['cross_axis_alignment']),
      mainAxisSize: json['main_axis_size'] as int,
      spacing: $enumDecode(_$CrumpetSpacingEnumMap, json['spacing']),
      children: (json['children'] as List<dynamic>)
          .map((e) => CrumpetElement.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CrumpetColumnPropertiesToJson(
        CrumpetColumnProperties instance) =>
    <String, dynamic>{
      'margin_top': instance.marginTop,
      'margin_bottom': instance.marginBottom,
      'margin_left': instance.marginLeft,
      'margin_right': instance.marginRight,
      'padding_top': instance.paddingTop,
      'padding_bottom': instance.paddingBottom,
      'padding_left': instance.paddingLeft,
      'padding_right': instance.paddingRight,
      'main_axis_alignment':
          _$CrumpetAxisAlignmentEnumMap[instance.mainAxisAlignment]!,
      'cross_axis_alignment':
          _$CrumpetAxisAlignmentEnumMap[instance.crossAxisAlignment]!,
      'main_axis_size': instance.mainAxisSize,
      'spacing': _$CrumpetSpacingEnumMap[instance.spacing]!,
      'children': instance.children,
    };

const _$CrumpetAxisAlignmentEnumMap = {
  CrumpetAxisAlignment.start: 'start',
  CrumpetAxisAlignment.center: 'center',
  CrumpetAxisAlignment.end: 'end',
};

const _$CrumpetSpacingEnumMap = {
  CrumpetSpacing.flex: 'flex',
};

CrumpetTextProperties _$CrumpetTextPropertiesFromJson(
        Map<String, dynamic> json) =>
    CrumpetTextProperties(
      text: json['text'] as int,
      fontSize: json['font_size'] as int,
      fontColor: json['font_color'] as String,
      flex: json['flex'] as int?,
    );

Map<String, dynamic> _$CrumpetTextPropertiesToJson(
        CrumpetTextProperties instance) =>
    <String, dynamic>{
      'text': instance.text,
      'font_size': instance.fontSize,
      'font_color': instance.fontColor,
      'flex': instance.flex,
    };

CrumpetImageProperties _$CrumpetImagePropertiesFromJson(
        Map<String, dynamic> json) =>
    CrumpetImageProperties(
      url: json['url'] as String,
      flex: json['flex'] as int?,
    );

Map<String, dynamic> _$CrumpetImagePropertiesToJson(
        CrumpetImageProperties instance) =>
    <String, dynamic>{
      'url': instance.url,
      'flex': instance.flex,
    };

CrumpetButtonProperties _$CrumpetButtonPropertiesFromJson(
        Map<String, dynamic> json) =>
    CrumpetButtonProperties(
      text: json['text'] as String,
      color: json['color'] as String,
      action: $enumDecode(_$ActionEnumMap, json['action']),
      eventName: json['event_name'] as String,
      stroke: json['stroke'] as int,
      strokeColor: json['stroke_color'] as String,
      borderRadius: json['border_radius'] as int,
      flex: json['flex'] as int?,
    );

Map<String, dynamic> _$CrumpetButtonPropertiesToJson(
        CrumpetButtonProperties instance) =>
    <String, dynamic>{
      'text': instance.text,
      'color': instance.color,
      'action': _$ActionEnumMap[instance.action]!,
      'event_name': instance.eventName,
      'stroke': instance.stroke,
      'stroke_color': instance.strokeColor,
      'border_radius': instance.borderRadius,
      'flex': instance.flex,
    };

const _$ActionEnumMap = {
  Action.close: 'close',
  Action.submit: 'submit',
  Action.next: 'next',
  Action.deepLink: 'deep_link',
  Action.externalLink: 'external_link',
};

CrumpetSelectionGroupProperties _$CrumpetSelectionGroupPropertiesFromJson(
        Map<String, dynamic> json) =>
    CrumpetSelectionGroupProperties(
      allowMultiSelection: json['allow_multi_selection'] as bool,
      eventName: json['event_name'] as String,
      selectorCount: json['selector_count'] as int,
      selectors: (json['selectors'] as List<dynamic>)
          .map((e) => Selector.fromJson(e as Map<String, dynamic>))
          .toList(),
      flex: json['flex'] as int?,
    );

Map<String, dynamic> _$CrumpetSelectionGroupPropertiesToJson(
        CrumpetSelectionGroupProperties instance) =>
    <String, dynamic>{
      'allow_multi_selection': instance.allowMultiSelection,
      'event_name': instance.eventName,
      'selector_count': instance.selectorCount,
      'selectors': instance.selectors,
      'flex': instance.flex,
    };

Selector _$SelectorFromJson(Map<String, dynamic> json) => Selector(
      text: json['text'] as String,
      value: json['value'] as String,
    );

Map<String, dynamic> _$SelectorToJson(Selector instance) => <String, dynamic>{
      'text': instance.text,
      'value': instance.value,
    };

CrumpetSliderProperties _$CrumpetSliderPropertiesFromJson(
        Map<String, dynamic> json) =>
    CrumpetSliderProperties(
      eventName: json['event_name'] as String,
      minValue: json['min_value'] as int,
      maxValue: json['max_value'] as int,
      increment: json['increment'] as int,
      flex: json['flex'] as int?,
    );

Map<String, dynamic> _$CrumpetSliderPropertiesToJson(
        CrumpetSliderProperties instance) =>
    <String, dynamic>{
      'event_name': instance.eventName,
      'min_value': instance.minValue,
      'max_value': instance.maxValue,
      'increment': instance.increment,
      'flex': instance.flex,
    };

CrumpetTextFieldProperties _$CrumpetTextFieldPropertiesFromJson(
        Map<String, dynamic> json) =>
    CrumpetTextFieldProperties(
      eventName: json['event_name'] as String,
      labelText: json['label_text'] as String,
      fontColor: json['font_color'] as String,
      fontSize: json['font_size'] as int,
      backgroundColor: json['background_color'] as String,
      borderRadius: json['border_radius'] as int,
      stroke: json['stroke'] as int,
      strokeColor: json['stroke_color'] as String,
      flex: json['flex'] as int?,
    );

Map<String, dynamic> _$CrumpetTextFieldPropertiesToJson(
        CrumpetTextFieldProperties instance) =>
    <String, dynamic>{
      'event_name': instance.eventName,
      'label_text': instance.labelText,
      'font_color': instance.fontColor,
      'font_size': instance.fontSize,
      'background_color': instance.backgroundColor,
      'border_radius': instance.borderRadius,
      'stroke': instance.stroke,
      'stroke_color': instance.strokeColor,
      'flex': instance.flex,
    };
