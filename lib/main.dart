import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Magic Eight Ball',
      home: MagicEightBall(),
    );
  }
}

class MagicEightBall extends StatefulWidget {
  @override
  _MagicEightBallState createState() => _MagicEightBallState();
}

class _MagicEightBallState extends State<MagicEightBall> {
  int wisdom = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Center(
          child: Text(
            'Ask Me Anything',
            style: TextStyle(fontSize: 30),
          ),
        ),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Center(
        child: FlatButton(
          onPressed: () {
            shake();
          },
          child: Image.asset('images/ball$wisdom.png'),
        ),
      ),
    );
  }

void shake(){
  setState(() {
    wisdom = Random().nextInt(5) +1 ;
  });
}

}
