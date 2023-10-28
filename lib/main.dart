import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[100],
        appBar: AppBar(
          title: Text('Magic Ball'),
          backgroundColor: Colors.blue[900],
        ),
        body: const MagicBall(),
      ),
    ),
  );
}

class MagicBall extends StatefulWidget {
  const MagicBall({super.key});

  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int ballResponse = 1;

  void randomizeResponse() {
    setState(() {
      ballResponse = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: TextButton(
          onPressed: () {
            randomizeResponse();
          },
          child: Image.asset('assets/images/ball$ballResponse.png'),
        ),
      ),
    );
  }
}
