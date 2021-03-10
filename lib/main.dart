import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[600],
        appBar: AppBar(
          title: Text('Bryan Mauricio Palma Flores'),
          backgroundColor: Colors.blue[900],
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}
class _DicePageState extends State<DicePage> {
  int RespuestaBola = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text("Magic 8 Ball",
            style: TextStyle(
              color: Colors.white,
              fontFamily: "Pacifico",
              fontWeight: FontWeight.bold,
              fontSize: 40
            )
          ),
          Expanded(
            child: FlatButton(
                onPressed: (){
                  setState(() {
                    RespuestaBola= GetRandomNumber();
                  });
                },
                child: Image.asset('Images/ball$RespuestaBola.png')
            ),
          ),
        ],
      ),
    );
  }
}

int GetRandomNumber(){
  Random rng = Random();
  var num = rng.nextInt(5)+1;
  return num;
}