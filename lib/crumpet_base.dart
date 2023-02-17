import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/scheduler.dart';
import 'package:collection/collection.dart';

import 'crumpet_client.dart';
import 'models/crumpet_component.dart';

class CrumpetBase extends StatefulWidget {
  final CrumpetClient client = CrumpetClient.instance;
  final Widget child;
  CrumpetBase({super.key, required this.child});

  @override
  State<CrumpetBase> createState() => _CrumpetBaseState();
}

class _CrumpetBaseState extends State<CrumpetBase> {
  //bool shouldShow = false;
	CrumpetComponent? componentToRender;
  late StreamSubscription _subscription;

  @override
  void initState() {
    _subscription = widget.client.stream.listen((event) {
      CrumpetComponent? component = widget.client.components.firstWhereOrNull(
        (element) => element.triggerEvent == event,
      );
      if (component != null) {
        setState(() {
					componentToRender = component;
        });
      }
    });
    super.initState();
  }

  Future<void> _shouldShow(BuildContext context) async {
    if (componentToRender != null) {
      await showDialog(
        context: context,
        builder: (context) => Dialog(
          child: Center(
            child: Text("Crumpet Dialog"),
          ),
        ),
      );
			componentToRender = null;
    }
  }

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SchedulerBinding.instance.addPostFrameCallback((_) => _shouldShow(context));
    return widget.child;
  }
}
