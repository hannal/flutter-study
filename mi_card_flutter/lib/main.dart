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
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
//            verticalDirection: VerticalDirection.up,
            children: <Widget>[
              Container(
                height: 100.0,
                color: Colors.white,
                child: Text('container 1'),
              ),
              Container(
                height: 100.0,
                color: Colors.blue,
                child: Text('container 2'),
              ),
              Container(
                height: 100.0,
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

