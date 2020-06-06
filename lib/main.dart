import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black54,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            'Xylophone',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          centerTitle: true,
        ),
        body: XylophonePage(),
      ),
    ),
  );
}

class XylophonePage extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = new AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded playButton({Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        playButton(color: Colors.red, soundNumber: 1),
        playButton(color: Colors.orange, soundNumber: 2),
        playButton(color: Colors.yellow, soundNumber: 3),
        playButton(color: Colors.green, soundNumber: 4),
        playButton(color: Colors.teal, soundNumber: 5),
        playButton(color: Colors.blue, soundNumber: 6),
        playButton(color: Colors.purple, soundNumber: 7),
      ],
    );
  }
}
