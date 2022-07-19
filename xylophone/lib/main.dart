import 'package:flutter/material.dart';
// import 'package:audioplayers/audioplayers.dart';
// import 'package:audioplayers/audio_cache.dart';
import 'package:just_audio/just_audio.dart';
import 'dart:math';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final player = AudioPlayer();

  Widget buildKey({/*int noteNum,*/ Color color = Colors.white}) /*=>*/ {
    int randomNum = Random().nextInt(7) + 1;
    return Expanded(
      child: Container(
        color: color,
        child: TextButton(
          onPressed: () {
            setState(() {
              playSound(randomNum /*noteNum*/);
            });
          },
          child: Container(),
        ),
      ),
    );
  }

  void playSound(int noteNumber) {
    player.setAsset('assets/note$noteNumber.wav');
    player.play();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(/*noteNum: 1,*/ color: Colors.red),
              buildKey(/*noteNum: 2,*/ color: Colors.orange),
              buildKey(/*noteNum: 3,*/ color: Colors.yellow),
              buildKey(/*noteNum: 4,*/ color: Colors.green),
              buildKey(/*noteNum: 5,*/ color: Colors.teal),
              buildKey(/*noteNum: 6,*/ color: Colors.blue),
              buildKey(color: Colors.purple /*, noteNum: 7*/),
            ],
          ),
        ),
      ),
    );
  }
}
/*
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Row(
                children: [],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
*/
