import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: BallPage(),
    ));

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text(
          'Ask Me Anything',
          style: TextStyle(
            fontFamily: 'Roboto Slab',
            fontSize: 30.0,
          ),
        ),
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
  int ballNumbers = 1;

  void changeBallNumber() {
    setState(() {
      ballNumbers = Random().nextInt(5) + 1;
      print(ballNumbers);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {
                changeBallNumber();
              },
              child: Image.asset('images/ball$ballNumbers.png'),
            ),
          ),
        ],
      ),
    );
  }
}
