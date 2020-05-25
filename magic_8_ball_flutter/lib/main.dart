import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ask me anything',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BallPage(),
    );
  }
}

class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ask me anything'),
        backgroundColor: Colors.blue[900],
      ),
      body: Container(
        color: Colors.blue,
      ),
    );
  }
}

