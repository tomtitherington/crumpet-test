import 'package:json_annotation/json_annotation.dart';

import 'crumpet_element.dart';

part 'crumpet_element_properties.g.dart';

//@JsonSerializable()

abstract class CrumpetElementProperties {
//   factory CrumpetElementProperties.fromJson(Map<String, dynamic> json) {
// switch (expression) {
//   case value:

//     break;
//   default:
// }
//   }

//       Map<String, dynamic> toJson() => _$CrumpetColumnPropertiesToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class CrumpetColumnProperties implements CrumpetElementProperties {
  final int marginTop;
  final int marginBottom;
  final int marginLeft;
  final int marginRight;
  final int paddingTop;
  final int paddingBottom;
  final int paddingLeft;
  final int paddingRight;

  final CrumpetAxisAlignment mainAxisAlignment;
  final CrumpetAxisAlignment crossAxisAlignment;
  final int mainAxisSize;

  final CrumpetSpacing spacing;
  final List<CrumpetElement> children;

  factory CrumpetColumnProperties.fromJson(Map<String, dynamic> json) =>
      _$CrumpetColumnPropertiesFromJson(json);

  CrumpetColumnProperties({
    required this.marginTop,
    required this.marginBottom,
    required this.marginLeft,
    required this.marginRight,
    required this.paddingTop,
    required this.paddingBottom,
    required this.paddingLeft,
    required this.paddingRight,
    required this.mainAxisAlignment,
    required this.crossAxisAlignment,
    required this.mainAxisSize,
    required this.spacing,
    required this.children,
  });

  Map<String, dynamic> toJson() => _$CrumpetColumnPropertiesToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class CrumpetTextProperties implements CrumpetElementProperties {
  final int text;
  final int fontSize;
  final String fontColor;
  final int? flex;

  factory CrumpetTextProperties.fromJson(Map<String, dynamic> json) =>
      _$CrumpetTextPropertiesFromJson(json);

  CrumpetTextProperties({
    required this.text,
    required this.fontSize,
    required this.fontColor,
    this.flex,
  });

  Map<String, dynamic> toJson() => _$CrumpetTextPropertiesToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class CrumpetImageProperties implements CrumpetElementProperties {
  final String url;
  final int? flex;

  factory CrumpetImageProperties.fromJson(Map<String, dynamic> json) =>
      _$CrumpetImagePropertiesFromJson(json);

  CrumpetImageProperties({
    required this.url,
    this.flex,
  });

  Map<String, dynamic> toJson() => _$CrumpetImagePropertiesToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class CrumpetButtonProperties implements CrumpetElementProperties {
  final String text;
  final String color;
  final Action action;
  final String eventName;
  final int stroke;
  final String strokeColor;
  final int borderRadius;

  final int? flex;

  factory CrumpetButtonProperties.fromJson(Map<String, dynamic> json) =>
      _$CrumpetButtonPropertiesFromJson(json);

  CrumpetButtonProperties({
    required this.text,
    required this.color,
    required this.action,
    required this.eventName,
    required this.stroke,
    required this.strokeColor,
    required this.borderRadius,
    required this.flex,
  });

  Map<String, dynamic> toJson() => _$CrumpetButtonPropertiesToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class CrumpetSelectionGroupProperties implements CrumpetElementProperties {
  final bool allowMultiSelection;
  final String eventName;
  final int selectorCount;
  final List<Selector> selectors;

  final int? flex;

  factory CrumpetSelectionGroupProperties.fromJson(Map<String, dynamic> json) =>
      _$CrumpetSelectionGroupPropertiesFromJson(json);

  CrumpetSelectionGroupProperties(
      {required this.allowMultiSelection,
      required this.eventName,
      required this.selectorCount,
      required this.selectors,
      this.flex});

  Map<String, dynamic> toJson() =>
      _$CrumpetSelectionGroupPropertiesToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Selector {
  final String text;
  final String value;

  factory Selector.fromJson(Map<String, dynamic> json) =>
      _$SelectorFromJson(json);

  Selector({
    required this.text,
    required this.value,
  });

  Map<String, dynamic> toJson() => _$SelectorToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class CrumpetSliderProperties implements CrumpetElementProperties {
  final String eventName;
  final int minValue;
  final int maxValue;
  final int increment;

  final int? flex;

  factory CrumpetSliderProperties.fromJson(Map<String, dynamic> json) =>
      _$CrumpetSliderPropertiesFromJson(json);

  CrumpetSliderProperties({
    required this.eventName,
    required this.minValue,
    required this.maxValue,
    required this.increment,
    this.flex,
  });

  Map<String, dynamic> toJson() => _$CrumpetSliderPropertiesToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class CrumpetTextFieldProperties implements CrumpetElementProperties {
  final String eventName;
  final String labelText;
  final String fontColor;
  final int fontSize;
  final String backgroundColor;
  final int borderRadius;
  final int stroke;
  final String strokeColor;

  final int? flex;

  factory CrumpetTextFieldProperties.fromJson(Map<String, dynamic> json) =>
      _$CrumpetTextFieldPropertiesFromJson(json);

  CrumpetTextFieldProperties({
    required this.eventName,
    required this.labelText,
    required this.fontColor,
    required this.fontSize,
    required this.backgroundColor,
    required this.borderRadius,
    required this.stroke,
    required this.strokeColor,
    this.flex,
  });

  Map<String, dynamic> toJson() => _$CrumpetTextFieldPropertiesToJson(this);
}

enum CrumpetSpacing {
  @JsonValue("flex")
  flex
}

enum Action {
  @JsonValue("close")
  close,
  @JsonValue("submit")
  submit,
  @JsonValue("next")
  next,
  @JsonValue("deep_link")
  deepLink,
  @JsonValue("external_link")
  externalLink
}

enum CrumpetAxisAlignment {
  @JsonValue("start")
  start,
  @JsonValue("center")
  center,
  @JsonValue("end")
  end
}
