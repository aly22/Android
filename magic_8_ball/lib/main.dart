import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const magic8Ball());
}

class magic8Ball extends StatelessWidget {
  const magic8Ball({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            centerTitle: true,
            title: Text('Ask me anything'),
            backgroundColor: Colors.indigo.shade900,
          ),
          body: magic8Ballstful(),
        ),
      ),
    );
  }
}

class magic8Ballstful extends StatefulWidget {
  const magic8Ballstful({Key? key}) : super(key: key);

  @override
  State<magic8Ballstful> createState() => _magic8BallstfulState();
}

class _magic8BallstfulState extends State<magic8Ballstful> {
  int ballNumber = 1;
  void numberChanger() {
    ballNumber = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  numberChanger();
                });
              },
              child: Image.asset('images/ball$ballNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
