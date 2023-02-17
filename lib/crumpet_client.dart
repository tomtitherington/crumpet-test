//the only bit that communicates with the server
//probs via web sockets

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/services.dart' show rootBundle;


import 'models/crumpet_component.dart';

//TODO do we store the template as a Map<String, dynamic> property or write the template to a file?

/// Component fetch process.
///
/// API fetch -> Write to JSON file in local storage -> Query JSON file on event

class CrumpetClient {
  final _controller = StreamController<String>();
  Stream<String> get stream => _controller.stream;

  final Iterable<CrumpetComponent> components;

  CrumpetClient._(List<dynamic> components)
      : components =
            components.map((component) => CrumpetComponent.fromJson(component as Map<String, dynamic>));
  static CrumpetClient? _instance;

  static Future<void> initialize({required String apiKey}) async {
    List<dynamic> json =
        await _readJsonFile("assets/crumpet_component_structure.json");

    _instance = CrumpetClient._(json);
  }

  static Future<List<dynamic>> _readJsonFile(
      String filePath) async {
    //var asString = await File(filePath).readAsString();
		String asString = await rootBundle.loadString(filePath);
    var map = jsonDecode(asString);
    return map['components'];
  }

  /// Returns a [CrumpetClient] instance.
  ///
  /// Throws if the client has not been initialized.
  static CrumpetClient get instance =>
      _instance ??= throw Exception('You must initialize the client first.');

  void event({required String eventName}) {
    instance._controller.sink.add(eventName);
  }
}
