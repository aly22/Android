import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(child: MyAppstful()),
      ),
      debugShowCheckedModeBanner: false, //TODO
    );
  }
}

class MyAppstful extends StatefulWidget {
  const MyAppstful({Key? key}) : super(key: key);

  @override
  State<MyAppstful> createState() => _MyAppstfulState();
}
/*
question1: 'You can lead a cow down stairs but not up stairs.', false,
question2: 'Approximately one quarter of human bones are in the feet.', true,
question3: 'A slug\'s blood is green.', true,
*/

class _MyAppstfulState extends State<MyAppstful> {
  List<String> questionTexts = [
    'You can lead a cow down stairs but not up stairs.',
    'Approximately one quarter of human bones are in the feet.',
    'A slug\'s blood is green.',
  ];

  int idxTrack = 0;

  List<String> rightOrWrong = ['false', 'true', 'true'];

  List<Icon> scoreKeeper = [];

  void onPressAction({String textToPrint = 'true'}) {
    print('button $textToPrint pressed');
    if (rightOrWrong[idxTrack] == textToPrint) {
      print('right!');
    } else {
      print('wrong.');
    }
    idxTrack++;
    setState(() {
      // scoreKeeper.add(
      //   Icon(
      //     Icons.add,
      //     color: Colors.blue,
      //   ),
      // );
    });
  }

  Widget buildButton(
      {Color colorOfText = Colors.white,
      String textToShow = 'True',
      Color colorOfButton = Colors.green,
      String textToPrint = 'true'}) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 20,
        ),
        color: colorOfButton,
        child: TextButton(
          onPressed: () {
            onPressAction(textToPrint: textToPrint);
          },
          child: Text(
            textToShow,
            style: TextStyle(
              color: colorOfText,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 5,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                questionTexts[idxTrack],
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  // letterSpacing: 1.2,
                ),
              ),
            ),
          ),
        ),
        buildButton(),
        buildButton(
          colorOfButton: Colors.red,
          textToShow: 'False',
          textToPrint: 'false',
        ),
        Row(
          children: scoreKeeper,
        )
      ],
    );
  }
}
