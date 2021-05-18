import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(Hope());
}

class Hope extends StatelessWidget{

  void teclaSound(int nota){
    final audioPlayer = AudioCache();
    audioPlayer.play('sound$nota.mp3');
  }

  Expanded creaTecla({Color color, int nota}){
    return Expanded(
      child: FlatButton(
        onPressed: (){
          teclaSound(nota);
        },
        color: color,
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'X',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[

              creaTecla(color: Colors.blue, nota: 1),
              creaTecla(color: Colors.red, nota: 2),
              creaTecla(color: Colors.yellow, nota: 3),
              creaTecla(color: Colors.pink, nota: 4),
              creaTecla(color: Colors.purple, nota: 5),
              creaTecla(color: Colors.green, nota: 6),
              creaTecla(color: Colors.grey, nota: 7),
              creaTecla(color: Colors.amber, nota: 8),
              creaTecla(color: Colors.redAccent, nota: 9),
              creaTecla(color: Colors.indigo, nota: 10),
            ],
          ),
        ),
      ),
    );
  }
  
}

