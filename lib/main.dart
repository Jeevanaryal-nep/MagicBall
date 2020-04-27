import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );
// material app- scaffold- then add backgorund color- add appbar
//body - ball
//create stateless widget for the app bar and body
//create stateful widget again for the action of the ball image
//create variable int ballNumber
// in there create random ball number

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      appBar: AppBar(
        backgroundColor: Colors.teal.shade900,
        title: Text('Ask Me Anything mate'),
        elevation: (4.6),
        centerTitle: (true),
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onPressed: () {
            setState(() {
              ballNumber = Random().nextInt(5) + 1;
              print('Ball is pressed ');
            });
          },
          child: Image.asset('images/ball$ballNumber.png')),
    );
  }
}
