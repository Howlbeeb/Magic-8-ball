import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp( debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.blueAccent.shade700,
          title: Text('Ask Me Anything'),
        ),
        body: magicball(),
      ),
    ),
  );
}

class magicball extends StatefulWidget {
  @override
  _magicballState createState() => _magicballState();
}

class _magicballState extends State<magicball> {
  int decision = 1;
  void pressed() {
    setState(() {
      decision = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(
        child: TextButton(
          onPressed: () {
            pressed();
          },
          child: Image.asset('images/ball$decision.png'),
        ),
      ),
    );
  }
}
