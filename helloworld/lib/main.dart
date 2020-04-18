import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  String getTitle(String name) {
    return 'Welcome $name';
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome Hannal',
      home: Scaffold(
        appBar: AppBar(
          title: Text(this.getTitle('Kay Cha')),
        ),
        body: Center(
          child: Text('Hello world'),
        ),
      ),
    );
  }
}
