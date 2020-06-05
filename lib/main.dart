import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                child: FlatButton(
                  color: Colors.black,

                  onPressed: () {
                    playsound(1);
                  },
                ),
              ),
              Container(
                child: FlatButton(
                  color: Colors.lightBlueAccent,

                  onPressed: () {
                    playsound(2);
                  },
                ),
              ),
              Container(
                child: FlatButton(
                  color: Colors.green,

                  onPressed: () {
                    playsound(3);
                  },
                ),
              ),
              Container(
                child: FlatButton(
                  color: Colors.grey,

                  onPressed: () {
                    playsound(4);
                  },
                ),
              ),
              Container(
                child: FlatButton(
                  color: Colors.pink,

                  onPressed: () {
                    playsound(5);
                  },
                ),
              ),
              Container(
                child: FlatButton(
                  color: Colors.red,

                  onPressed: () {

                    playsound(6);
                  },
                ),
              ),
              Container(
                child: FlatButton(
                  color: Colors.teal,

                  onPressed: () {
                    playsound(7);
                  },
                ),
              ),



            ],
          ),
        ),
      ),
    );
  }
  void playsound(int number){
    final player=new AudioCache();
    player.play('note$number.wav');
  }
}
