import 'package:flutter/material.dart';
import 'package:dobblegame/game_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Dobble Game',
      home: Inicio(),
    );
  }
}

class Inicio extends StatelessWidget {

  Widget buildButton(BuildContext context, String text, String mode){
    return OutlineButton(
      child: Text(text),
      onPressed: (){//Al pulsar
        return Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => GameLaunch(mode)),
        );
      },
    );
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: Text('Dobble'),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: buildButton(context, 'Singleplayer', 'singleplayer'),
            ),
            Expanded(
              child: buildButton(context, 'Multiplayer', 'multiplayer'),
            ),
          ],
        )
    );
  }
}