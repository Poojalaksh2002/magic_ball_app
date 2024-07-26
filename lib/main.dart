import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: BallPage(),
    ),
  );
}

class BallPage extends StatelessWidget {
  const BallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 49, 126, 189),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 1, 25, 45),
        title: Text(
          'Ask Me Anything',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({super.key});

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;
  void updateBall() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
    print(ballNumber);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        child: Container(
          child: Image.asset('images/ball${ballNumber}.png'),
        ),
        onPressed: updateBall,
      ),
    );
  }
}
