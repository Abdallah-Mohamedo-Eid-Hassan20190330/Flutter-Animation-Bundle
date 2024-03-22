import 'package:flutter/material.dart';
import 'package:flutter_animation_bundle/animated_foo/animated_container/example_one.dart';
import 'package:flutter_animation_bundle/tween_animation/example_with_child/example_three.dart';
import 'package:flutter_animation_bundle/tween_animation/example_without_child/example_two.dart';
import 'package:flutter_animation_bundle/tween_animation/example_without_child/intro.dart';

import 'foo_transition/example_one/example_four.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ExampleFour(),
      debugShowCheckedModeBanner: false,
    );
  }
}
