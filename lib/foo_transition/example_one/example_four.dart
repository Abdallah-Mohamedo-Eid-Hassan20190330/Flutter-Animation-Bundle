import 'package:flutter/material.dart';

class ExampleFour extends StatefulWidget {
  @override
  State<ExampleFour> createState() => _ExampleFourState();
}

class _ExampleFourState extends State<ExampleFour>
    with TickerProviderStateMixin {
  late Animation<AlignmentGeometry> green;
  late Animation<AlignmentGeometry> yellow;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 1),
        reverseDuration: const Duration(seconds: 2));

    green = Tween<AlignmentGeometry>(
            begin: Alignment.topCenter, end: Alignment.bottomCenter)
        .animate(controller);

    yellow = Tween<AlignmentGeometry>(
            begin: Alignment.centerLeft, end: Alignment.centerRight)
        .animate(controller);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Foo Transition Basics"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            _stack(),
            _buttons(),
          ],
        ),
      ),
    );
  }

  Widget _stack() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Stack(
          children: [
            AlignTransition(
              alignment: green,
              child: CircleAvatar(
                backgroundColor: Colors.green,
                radius: 30,
              ),
            ),
            AlignTransition(
              alignment: yellow,
              child: CircleAvatar(
                backgroundColor: Colors.yellow,
                radius: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buttons() {
    return Wrap(
      alignment: WrapAlignment.spaceBetween,
      children: [
        ElevatedButton(
          onPressed: () {
            controller.forward();
          },
          child: Text("Forward"),
        ),
        ElevatedButton(
          onPressed: () {
            controller.reverse();
          },
          child: Text("Reverse"),
        ),
        ElevatedButton(
          onPressed: () {
            controller.stop();
          },
          child: Text("Stop"),
        ),
        ElevatedButton(
          onPressed: () {
            controller.reset();
          },
          child: Text("Reset"),
        ),
        ElevatedButton(
          onPressed: () {
            controller.repeat();
          },
          child: Text("Repeat (Reverse=false)"),
        ),
        SizedBox(
          width: 10,
        ),
        ElevatedButton(
          onPressed: () {
            controller.repeat(reverse: true);
          },
          child: Text("Repeat (Reverse=true)"),
        ),
      ],
    );
  }
}
