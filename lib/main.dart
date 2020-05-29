import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';


void main() => runApp(Hope());

class Hope extends StatelessWidget {
  void teclaSound(String nota){
    final audioPlayer = AudioCache();
    audioPlayer.play('$nota.mp3');

  }
  Expanded createTecla({Color color, String nota, String name}){
    return Expanded(
      child: FlatButton(
        child: Text(
          '$name',
          textAlign: TextAlign.center,
        ),
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
      title: 'Colors',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,

      ),
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              createTecla(color: Color.fromRGBO(30,144,255, 1.0), nota: 'blue', name: 'Blue'),
              createTecla(color: Color.fromRGBO(255, 0, 0, 1.0), nota: 'red', name: 'Red'),
              createTecla(color: Color.fromRGBO(34,139,34, 1.0), nota: 'green', name: 'Green'),
              createTecla(color: Color.fromRGBO(0,0,0, 1.0), nota: 'black', name: 'Black'),
              createTecla(color: Color.fromRGBO(255,69,0, 1.0), nota: 'orange', name: 'Orange'),
              createTecla(color: Color.fromRGBO(255,105,180, 1.0), nota: 'pink', name: 'Pink'),
              createTecla(color: Color.fromRGBO(255,255,255, 1.0), nota: 'white', name: 'White'),
              createTecla(color: Color.fromRGBO(138,43,226, 1.0), nota: 'purple', name: 'Purple'),
              createTecla(color: Color.fromRGBO(255,255,0, 1.0), nota: 'yellow', name: 'Yellow'),
              createTecla(color: Color.fromRGBO(192,192,192, 1.0), nota: 'grey', name: 'Grey'),


  


            ],
          ),
        ),
      ),
    );
  }

}