import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text(
          'I am Rich',
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.blueGrey[900],
      ),
      body: Center(
        child: Image(
          image: NetworkImage('https://image.shutterstock.com/z/stock-photo-white-transparent-leaf-on-mirror-surface-with-reflection-on-turquoise-background-macro-artistic-1029171697.jpg'),
        ),
      ),
    ),
  ),
);

