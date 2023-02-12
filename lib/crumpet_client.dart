//the only bit that communicates with the server
//probs via web sockets

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';

class CrumpetClient {
  final _controller = StreamController<String>();
  Stream<String> get stream => _controller.stream;

  CrumpetClient._();

  static CrumpetClient? _instance;

  static Future<void> initialize({required String apiKey}) async {
    await Future.delayed(const Duration(seconds: 1));
    //feign network call
    _instance = CrumpetClient._();
  }

  /// Returns a [CrumpetClient] instance.
  ///
  /// Throws if the client has not been initialized.
  static CrumpetClient get instance =>
      _instance ??= throw Exception('You must initialize the client first.');

  void addEvent() {
    instance._controller.sink.add("new_event");
  }
}
