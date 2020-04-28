import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() =>
    runApp(MaterialApp(
      home: BallPage(),
    ));

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  void changeBall() {
    setState(() {
      ballState = Random().nextInt(4) + 1;
    });
  }

  int ballState = 1;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Center(
        child: Container(
          child: Image.asset('images/ball$ballState.png'),
        ),
      ),
      onPressed: () {
        print(ballState);
        changeBall();
      },
    );
  }
}

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Ball(),
      backgroundColor: Colors.blue[500],
      appBar: AppBar(
        title: Text('Ask Me Anything'),
        backgroundColor: Colors.blue[900],
      ),
    );
  }
}
