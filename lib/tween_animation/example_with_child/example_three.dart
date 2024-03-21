import 'package:flutter/material.dart';

class ExampleThree extends StatefulWidget {
  @override
  State<ExampleThree> createState() => _ExampleThreeState();
}

class _ExampleThreeState extends State<ExampleThree> {
  double dimension = 100;
  double start = 100;
  double end = 200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Container Animation"),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TweenAnimationBuilder(
                duration: Duration(seconds: 1),
                tween: Tween<double>(begin: start, end: end),
                child: GetContainerChild(),
                builder: (context, value, child) {
                  print("value now is $value");
                  print(">> container");
                  return Container(
                    width: value,
                    height: value,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: child,
                  );
                })
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          start == 100 ? start = 200 : start = 100;
          end == 200 ? end = 100 : end = 200;

          setState(() {});
        },
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}

Widget GetContainerChild() {
  print(">>>>> getText");
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: Column(
      children: [
        getText("First"),
        Spacer(),
        getText("Second"),
      ],
    ),
  );
}

Widget getText(String text) {
  print(">>>>>>> build text $text");
  return Text(
    text,
    style: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
  );
}
