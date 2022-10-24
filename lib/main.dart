// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void play_sound(int s_no) {
    final player = AudioPlayer();
    player.play(AssetSource('note$s_no.wav'));
  }

  Expanded build_key({Color color = Colors.white, int key_no = 1}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          play_sound(key_no);
        },
        style:
            TextButton.styleFrom(backgroundColor: color, enableFeedback: false),
        child: Icon(
          Icons.music_note_rounded,
          color: Colors.amber,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              build_key(color: Colors.red, key_no: 1),
              build_key(color: Colors.orange, key_no: 2),
              build_key(color: Colors.yellow, key_no: 3),
              build_key(color: Colors.green, key_no: 4),
              build_key(color: Colors.teal, key_no: 5),
              build_key(color: Colors.purple, key_no: 6),
              build_key(color: Colors.blue, key_no: 7),
            ],
          ),
        ),
      ),
    );
  }
}
