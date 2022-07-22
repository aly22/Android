import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'questionBrain.dart';

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

class _MyAppstfulState extends State<MyAppstful> {
  QuestionBrain questionBrain = QuestionBrain();
  void onPressAction(String textToPrint) {
    print('button $textToPrint pressed');

    setState(() {
      if (questionBrain.isFinished() == true) {
        Alert(
          context: context,
          type: AlertType.success,
          title: 'Finished!',
          desc:
              'You\'ve reached the end of the quiz. Tap on x to see your final result',
          buttons: [
            DialogButton(
              child: Text(
                'Restart',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () {
                Navigator.pop(context);
                setState(() {
                  questionBrain.reset();
                  scoreKeeper = [];
                });
              },
              width: 120,
            )
          ],
        ).show();
      } else {
        if (questionBrain.getQuestionAnswer() == textToPrint) {
          scoreKeeper.add(
            Icon(
              Icons.check,
              color: Colors.green,
            ),
          );
        } else {
          scoreKeeper.add(
            Icon(
              Icons.close,
              color: Colors.red,
            ),
          );
        }
      }
    });
    questionBrain.nextQuestion();
  }

  List<Icon> scoreKeeper = [];

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
            onPressAction(textToPrint);
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
                questionBrain.getQuestionText(),
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
