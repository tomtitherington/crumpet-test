import 'package:json_annotation/json_annotation.dart';
import 'package:crumpet_test/models/crumpet_component.dart';

import 'crumpet_element_properties.dart';

//part 'crumpet_element.g.dart';

// @JsonSerializable(fieldRename: FieldRename.snake)
// @CrumpetElementConverter()
abstract class CrumpetElement {
  final CrumpetElementType elementType;
  final CrumpetElementProperties properties;

  CrumpetElement({required this.elementType, required this.properties});

  factory CrumpetElement.fromJson(Map<String, dynamic> json) {
    switch (json["element_type"]) {
      case "column":
        return CrumpetColumn(
          elementType: CrumpetElementType.column,
          properties: CrumpetColumnProperties.fromJson(json["properties"]),
        );
      case "text":
        return CrumpetText(
          elementType: CrumpetElementType.text,
          properties: CrumpetTextProperties.fromJson(json["properties"]),
        );
      case "image":
        return CrumpetImage(
          elementType: CrumpetElementType.image,
          properties: CrumpetImageProperties.fromJson(json["properties"]),
        );
      case "button":
        return CrumpetButton(
          elementType: CrumpetElementType.button,
          properties: CrumpetButtonProperties.fromJson(json["properties"]),
        );
      case "selection_group":
        return CrumpetSelectionGroup(
          elementType: CrumpetElementType.selectionGroup,
          properties:
              CrumpetSelectionGroupProperties.fromJson(json["properties"]),
        );
      case "slider":
        return CrumpetSlider(
          elementType: CrumpetElementType.slider,
          properties: CrumpetSliderProperties.fromJson(json["properties"]),
        );
      case "text_field":
        return CrumpetTextField(
          elementType: CrumpetElementType.textField,
          properties: CrumpetTextFieldProperties.fromJson(json["properties"]),
        );
      default:
        throw Exception("Unsupported element type!");
    }
  }

    Map<String, dynamic> toJson() => throw UnimplementedError();

}

class CrumpetColumn extends CrumpetElement {
  CrumpetColumn({required super.elementType, required super.properties});
}

class CrumpetText extends CrumpetElement {
  CrumpetText({required super.elementType, required super.properties});
}

class CrumpetImage extends CrumpetElement {
  CrumpetImage({required super.elementType, required super.properties});
}

class CrumpetButton extends CrumpetElement {
  CrumpetButton({required super.elementType, required super.properties});
}

class CrumpetSelectionGroup extends CrumpetElement {
  CrumpetSelectionGroup(
      {required super.elementType, required super.properties});
}

class CrumpetSlider extends CrumpetElement {
  CrumpetSlider({required super.elementType, required super.properties});
}

class CrumpetTextField extends CrumpetElement {
  CrumpetTextField({required super.elementType, required super.properties});
}

@JsonEnum(valueField: 'element_type')
enum CrumpetElementType {
  @JsonValue("column")
  column,
  @JsonValue("text")
  text,
  @JsonValue("image")
  image,
  @JsonValue("button")
  button,
  @JsonValue("selection_group")
  selectionGroup,
  @JsonValue("slider")
  slider,
  @JsonValue("text_field")
  textField,
}

class CrumpetElementConverter
    implements JsonConverter<CrumpetElement, Map<String, dynamic>> {
  const CrumpetElementConverter();

  @override
  CrumpetElement fromJson(Map<String, dynamic> json) {
    switch (json["element_type"]) {
      case "column":
        return CrumpetColumn(
          elementType: CrumpetElementType.column,
          properties: CrumpetColumnProperties.fromJson(json["properties"]),
        );
      case "text":
        return CrumpetText(
          elementType: CrumpetElementType.text,
          properties: CrumpetTextProperties.fromJson(json["properties"]),
        );
      case "image":
        return CrumpetImage(
          elementType: CrumpetElementType.image,
          properties: CrumpetImageProperties.fromJson(json["properties"]),
        );
      case "button":
        return CrumpetButton(
          elementType: CrumpetElementType.button,
          properties: CrumpetButtonProperties.fromJson(json["properties"]),
        );
      case "selection_group":
        return CrumpetSelectionGroup(
          elementType: CrumpetElementType.selectionGroup,
          properties:
              CrumpetSelectionGroupProperties.fromJson(json["properties"]),
        );
      case "slider":
        return CrumpetSlider(
          elementType: CrumpetElementType.slider,
          properties: CrumpetSliderProperties.fromJson(json["properties"]),
        );
      case "text_field":
        return CrumpetTextField(
          elementType: CrumpetElementType.textField,
          properties: CrumpetTextFieldProperties.fromJson(json["properties"]),
        );
      default:
        throw Exception("Unsupported element type!");
    }
  }

  @override
  Map<String, dynamic> toJson(CrumpetElement object) => {"example": "example"};
}
