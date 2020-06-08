import 'package:flutter/material.dart';

import 'package:bitcointicker/price_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bitcoin ticker',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PriceScreen(),
    );
  }
}

