import 'package:flutter/material.dart';

class ExampleTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter Animation"),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TweenAnimationBuilder(
                tween: IntTween(begin: 0, end: 100),
                duration: const Duration(seconds: 3),
                builder: (context, value, child) {
                  return Text(
                    "$value",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
