import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(Xylophone());

class Xylophone extends StatelessWidget {
  // This widget is the root of your application.
  void playSound(int soundNumber) {
    final audioCache = AudioCache();
    audioCache.play('note$soundNumber.wav');
  }

  Widget buildKey(int soundId, Color color) {
    return (Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundId);
        },
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(1, Colors.red),
              buildKey(2, Colors.orange),
              buildKey(3, Colors.yellowAccent),
              buildKey(4, Colors.lightGreenAccent),
              buildKey(5, Colors.lightBlue),
              buildKey(6, Colors.blue[900]),
              buildKey(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
