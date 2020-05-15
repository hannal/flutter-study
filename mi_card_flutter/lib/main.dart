import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
//            verticalDirection: VerticalDirection.up,
            children: <Widget>[
              Container(
                width: 100.0,
                color: Colors.white,
                child: Text('container 1'),
              ),
              SizedBox(
                width: 30.0,
              ),
              Container(
                width: 100.0,
                color: Colors.blue,
                child: Text('container 2'),
              ),
              Container(
                width: 100.0,
                color: Colors.black26,
                child: Text('container 3'),
              ),
            ],
          ),
        ), // notch에 대응.
      ),
    );
  }
}

