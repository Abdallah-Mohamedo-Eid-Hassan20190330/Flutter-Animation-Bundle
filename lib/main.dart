import 'package:flutter/material.dart';
import 'package:flutter_animation_bundle/animated_foo/animated_container/example_one.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ExampleOne(),
      debugShowCheckedModeBanner: false,
    );
  }
}
