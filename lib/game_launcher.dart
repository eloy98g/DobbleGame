import 'package:flutter/material.dart';
import 'package:dobblegame/main.dart';

class GameLaunch extends StatelessWidget{
  final String mode;
  GameLaunch(this.mode);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(mode),
        backgroundColor: Colors.blue,
      ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: BuildCard(),
            ),
            Expanded(
              flex:2,
              child: BuildCard(),
            ),
          ],
        )
    );
  }

  Widget BuildCard(){
    return Container(
      decoration: BoxDecoration(
          color: Colors.orange,
          shape: BoxShape.circle
      ),
      child: new Column(
        children: <Widget>[
          new Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle
              ),
            ),
          ),
          new Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.circle
              ),
            ),
          ),
          new Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.purple,
                  shape: BoxShape.circle
              ),
            ),
          ),
          new Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle
              ),
            ),
          ),
        ],
      ),
    );
  }
}