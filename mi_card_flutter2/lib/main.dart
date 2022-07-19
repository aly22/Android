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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('images/2017.jpg'),
              ),
              Text(
                'Ali Dahud',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Enterpreneur'.toUpperCase(),
                style: TextStyle(
                  color: Colors.teal[100],
                  fontSize: 20,
                  fontFamily: 'SourceSansPro',
                  letterSpacing: 2,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
                width: 250,
                child: Divider(
                  color: Colors.teal.shade50,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.red,
                  ),
                  title: Text(
                    '+36 30 742 1723',
                    style: TextStyle(
                      color: Colors.red[900],
                      fontSize: 20,
                      fontFamily: 'SourceSansPro',
                    ),
                  ),
                  // height: 20,
                ),
                // width: 20,
              ),
              Card(
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.red,
                  ),
                  title: Text(
                    'alidahud@gmail.com',
                    style: TextStyle(
                      color: Colors.red[900],
                      fontSize: 20,
                      fontFamily: 'SourceSansPro',
                    ),
                  ),
                  // height: 20,
                ),
                // width: 20,
              ),
              Card(
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 25,
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.home,
                    color: Colors.red,
                  ),
                  title: Text(
                    'Hungary',
                    style: TextStyle(
                      color: Colors.red[900],
                      fontFamily: 'SourceSansPro',
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 25,
                ),
                color: Colors.white,
                child: ListTile(
                  leading: Icon(
                    Icons.photo_camera,
                    color: Colors.red,
                  ),
                  title: Text(
                    '@alibatyad',
                    style: TextStyle(
                      color: Colors.red[900],
                      fontSize: 20,
                      fontFamily: 'SourceSansPro',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
/*Row(
crossAxisAlignment: CrossAxisAlignment.stretch,
mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [
Container(
color: Colors.red,
width: 100.0,
),
Column(
mainAxisAlignment: MainAxisAlignment.center,
children: [
Container(
color: Colors.yellow,
height: 100.0,
width: 100.0,
),
Container(
color: Colors.green,
height: 100.0,
width: 100.0,
),
],
),
Container(
color: Colors.blue,
width: 100.0,
),
],
),*/
