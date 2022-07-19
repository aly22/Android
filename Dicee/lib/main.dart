import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Dicee',
          ),
          backgroundColor: Colors.red,
        ),
        body: Dicee(),
      ),
    ),
  );
}

class Dicee extends StatefulWidget {
  const Dicee({Key? key}) : super(key: key);

  @override
  State<Dicee> createState() => _DiceeState();
}

class _DiceeState extends State<Dicee> {
  int leftDiceNum = 1;
  int rightDiceNum = 1;

  void ss() {
    rightDiceNum = Random().nextInt(6) + 1;
    leftDiceNum = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      ss();
                    });
                  },
                  child: Image.asset('images/dice$leftDiceNum.png'),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      ss();
                    });
                  },
                  child: Image.asset('images/dice$rightDiceNum.png'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
