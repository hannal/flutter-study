import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  void playSound(String filename) {
    final AudioCache player = AudioCache();
    player.play(filename);
  }

  Expanded buildKey({Color color, String sound}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () { playSound('$sound.wav'); },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Xylophone',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, sound: 'note1'),
              buildKey(color: Colors.orange, sound: 'note2'),
              buildKey(color: Colors.yellow, sound: 'note3'),
              buildKey(color: Colors.green, sound: 'note4'),
              buildKey(color: Colors.teal, sound: 'note5'),
              buildKey(color: Colors.blue, sound: 'note6'),
              buildKey(color: Colors.purple, sound: 'note7'),
            ],
          ),
        ),
      ),
    );
  }
}

