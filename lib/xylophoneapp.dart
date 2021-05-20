import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int note) {
    final player = AudioCache();
    player.play('note$note.wav');
  }

  Expanded buildstuff({Color color, int key}) {
    return Expanded(
      child: Container(
          width: double.infinity,
          color: color,
          child: FlatButton(
            onPressed: () {
              playsound(key);
            },
            child: Text(
              'Note $key',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: color,
              ),
            ),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              buildstuff(color: Colors.red, key: 1),
              buildstuff(color: Colors.orange, key: 2),
              buildstuff(color: Colors.yellow, key: 3),
              buildstuff(color: Colors.green, key: 4),
              buildstuff(color: Colors.teal, key: 5),
              buildstuff(color: Colors.blue, key: 6),
              buildstuff(color: Colors.purple, key: 7),
            ],
          ),
        ),
      ),
    );
  }
}
