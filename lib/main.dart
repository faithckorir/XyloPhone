import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(

          child: Column(


            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(Colors.teal),
              buildKey(Colors.blue),
              buildKey(Colors.grey),
              buildKey(Colors.green),
              buildKey(Colors.red),
              buildKey(Colors.teal),
              buildKey(Colors.orange),




            ],
          ),
        ),
      ),
    );
  }
  void playsound({int number}){
    final player=new AudioCache();
    player.play('note$number.wav');
  }
  Widget buildKey(Colors){
return
    Expanded(
      child: Container(
        child: FlatButton(
          color: Colors,

          onPressed: () {
            playsound(number: 7);
          },
        ),
      ),
    );
  }
}
