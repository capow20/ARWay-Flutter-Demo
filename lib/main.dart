import 'package:arway_flutter_demo_app/views/home_view.dart';
import 'package:arway_flutter_demo_app/views/unity_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ARWayFlutterDemoApp());
}

class ARWayFlutterDemoApp extends StatelessWidget {
  const ARWayFlutterDemoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': ((context) => const HomeView()),
        '/unity': ((context) => const UnityView()),
      },
    );
  }
}
