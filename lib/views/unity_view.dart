import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_unity_widget/flutter_unity_widget.dart';

class UnityView extends StatefulWidget {
  const UnityView({Key? key}) : super(key: key);

  @override
  State<UnityView> createState() => _UnityViewState();
}

class _UnityViewState extends State<UnityView> {
  late final UnityWidgetController _controller;

  void _onUnityCreated(UnityWidgetController c) async {
    await c.resume();
    _controller = c;
  }

  void _onUnityMessage(dynamic message) {
    if (!kDebugMode) return;
    log("***Message Received From Unity: ${message.toString()}***");
  }

  @override
  void dispose() {
    _controller.quit();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text("Unity View"),
      ),
      body: UnityWidget(
        onUnityCreated: _onUnityCreated,
        onUnityMessage: _onUnityMessage,
      ),
    );
  }
}
