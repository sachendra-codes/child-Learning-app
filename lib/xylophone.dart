import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'datasource.dart';

class Xylophone extends StatefulWidget {
  @override
  _XylophoneState createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: (){Navigator.pop(context);},
        ),
        backgroundColor: Colors.green,
        title: Text('Xylophone',),
      ),
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          xkey(Colors.red, 'note1.wav',''),
          xkey(Colors.blue, 'note2.wav','P'),
          xkey(Colors.orange, 'note3.wav','R' ),
          xkey(Colors.deepPurple, 'note4.wav','E'),
          xkey(Colors.yellow, 'note5.wav','S'),
          xkey(Colors.brown, 'note6.wav','S'),
          xkey(Colors.green, 'note7.wav',''),

        ],
      ),
    );
  }
}


Expanded xkey(Color keyColor, String song, String data){
  return Expanded(
    child: GestureDetector(
      onTap: (){
        player.play(song);
      },
      child: Container(
        child: Center(
          child: Text(data,style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 22
          ),),
        ),
        color: keyColor,
      ),
    ),
  );
}

