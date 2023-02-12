import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/scheduler.dart';

import 'crumpet_client.dart';

class CrumpetBase extends StatefulWidget {
  final CrumpetClient client = CrumpetClient.instance;
  final Widget child;
  CrumpetBase({super.key, required this.child});

  @override
  State<CrumpetBase> createState() => _CrumpetBaseState();
}

class _CrumpetBaseState extends State<CrumpetBase> {
  bool shouldShow = false;
  late StreamSubscription _subscription;

  @override
  void initState() {
    _subscription = widget.client.stream.listen((event) {
      setState(() {
        shouldShow = true;
      });
    });
    super.initState();
  }

  void _shouldShow(BuildContext context) {
    if (shouldShow) {
      showDialog(
        context: context,
        builder: (context) => Dialog(
          child: Center(
            child: Text("Crumpet Dialog"),
          ),
        ),
      );
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
