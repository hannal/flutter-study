import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  void playSound(String filename) {
    final AudioCache player = AudioCache();
    player.play(filename);
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
              Expanded(
                child: FlatButton(
                  color: Colors.red,
                  onPressed: () { playSound('note1.wav'); },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.orange,
                  onPressed: () { playSound('note2.wav'); },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.yellow,
                  onPressed: () { playSound('note3.wav'); },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.green,
                  onPressed: () { playSound('note4.wav'); },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.teal,
                  onPressed: () { playSound('note5.wav'); },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.blue,
                  onPressed: () { playSound('note6.wav'); },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.purple,
                  onPressed: () { playSound('note7.wav'); },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

