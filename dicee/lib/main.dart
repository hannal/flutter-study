import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Image.asset('images/dice1.png'),
          ),
          Expanded(
            flex: 1,
            child: Image.asset('images/dice6.png'),
          ),
        ],
      ),
    );
  }
}
