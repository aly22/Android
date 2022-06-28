import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                child: Text("Hello"),
                color: Colors.red,
                height: 100.0,
                width: 300.0,
              ),
              Container(
                child: Text("Hello2"),
                color: Colors.white,
                height: 100.0,
                width: 100.0,
              ),
              Container(
                child: Text("Hello3"),
                color: Colors.green,
                height: 100.0,
                width: 100.0,
              ),
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
