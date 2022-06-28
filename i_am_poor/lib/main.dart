import 'package:flutter/material.dart';

void main() {
  const data = 'I Am Poor';
  const assetName = 'images/style.jpg';
  runApp(
    (MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red[400],
        appBar: AppBar(
          title: Text(data),
          backgroundColor: Colors.red[900],
        ),
        body: Center(
          child: Image(
            image: AssetImage(assetName),
          ),
        ),
      ),
    )),
  );
}
