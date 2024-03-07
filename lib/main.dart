import 'package:flutter/material.dart';
import 'package:flutter_application_1/ContentView.dart';

void main() {
  runApp(SmartAquariumApp());
}

class SmartAquariumApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ContentView(),
    );
  }
}
